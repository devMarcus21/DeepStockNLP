import tweepy
from datetime import datetime
import time
from queue import Queue
from threading import Thread
import pymysql
import os
import sys

# API Key
customer_key = "i4YbObSsZEC1pvY0FZ34Z6wIM"
# API Secret Key
customer_key_secret = "WAEtBR185ImpB73fChDchlwMLxVogLPpu90taAB9p8DLhETkGO"

# Access Token
access_token = "1194387311988920321-9ANtEeV7cdW8rZHcFV8pa5ne4A8mLv"
# Access Token Secret
access_token_secret = "by4EULNXAJvnRQ8P5M6AigFsTt4PI6kNaHaJWoiKZR2Xb"

auth = tweepy.OAuthHandler(customer_key, customer_key_secret)
auth.set_access_token(access_token, access_token_secret)

api = tweepy.API(auth)

try:
	api.me().name
	print("Authentication OK")
except:
	print("Error during authentication")

conn = pymysql.connect('localhost', 'leemg', 'MarLee21!', 'CAP_stock2020')


# List of stocks to look at
stocks = ['google', 'amazon', 'tesla', 'apple', 'microsoft']

# ID of developer list
list_id='1320842731472580608'

stock_tables = {}
stop_threads = False

# queue <string of search words> language
def searchTweets(out_q, word, langauge):
	stock_name = (word.split())[0]
	while(True):
		try:
			global stop_threads
			if (stop_threads):
				break
			for tweet in tweepy.Cursor(api.search, q=word, lang=langauge, tweet_mode="extended", wait_on_rate_limit_notify=True).items(200):
				if tweet.full_text.startswith("RT @"):
					retweet_author = tweet.retweeted_status.author.name.replace(',', ' ')
					retweet_author = retweet_author.replace('\n',' ').replace('\'', ' ').replace('\"', ' ')
					retweet_author = retweet_author.encode("ascii", "ignore").decode()
					tweet_status = tweet.retweeted_status.full_text.replace(',', ' ')
					retweet_author_followers = tweet.retweeted_status.author.followers_count
					retweet_author_following = tweet.retweeted_status.author.friends_count
				else:
					retweet_author = "None"
					tweet_status = tweet.full_text.replace(',', ' ')
					retweet_author_followers = 0
					retweet_author_following = 0
				author_followers = tweet.user.followers_count
				author_following = tweet.user.friends_count
				process_status = tweet_status.replace('\n',' ').replace('\"', ' ').replace('\'', ' ')
				process_status = process_status.encode("ascii", "ignore").decode()
				user_name = tweet.user.name.replace(',', ' ').replace('\'', ' ').replace('\"', ' ').encode("ascii", "ignore").decode()
				user_id = tweet.user.id_str
				bio = tweet.user.description.replace('\n',' ').replace(',', ' ').replace('\'', ' ').replace('\"', ' ').encode("ascii", "ignore").decode()
				out_q.put([stock_name, user_name, user_id, bio, author_followers, author_following, tweet.created_at, retweet_author, retweet_author_followers, retweet_author_following, tweet.retweet_count, tweet.favorite_count, process_status])
		except tweepy.TweepError as error:
			#print("waiting on rate limit...") # Test print
			time.sleep(60*15)
			continue
		except StopIteration:
			print("Error in iteration...")
			print([stock_name, user_name, user_id, bio, author_followers, author_following, tweet.created_at, retweet_author, retweet_author_followers, retweet_author_following, tweet.retweet_count, tweet.favorite_count, process_status])
			exit()
			break

def tweetAlreadySeen(tweet_data, cursor):
	stock_table_name = stock_tables[tweet_data[0]]
	#query = "SELECT * FROM "+stock_table_name+" WHERE username=%s AND id=%s AND description=%s AND followers=%s AND following=%s AND date_tweeted=%s AND retweet_author=%s AND retweet_followers=%s AND retweet_following=%s AND retweets=%s AND favorites=%s AND status=%s"
	#args = (tweet_data[1],str(tweet_data[2]),tweet_data[3],tweet_data[4],tweet_data[5],str(tweet_data[6].replace(hour=0,minute=0, second=0)),tweet_data[7],tweet_data[8],tweet_data[9],tweet_data[10],tweet_data[11],tweet_data[12])
	query = "SELECT * FROM "+stock_table_name+" WHERE id=%s AND date_tweeted=%s AND retweet_author=%s AND status=%s"
	args = (tweet_data[2], str(tweet_data[6].replace(hour=0,minute=0, second=0)), tweet_data[7], tweet_data[12])
	cursor.execute(query, args)
	result = cursor.fetchone()
	row_count = cursor.rowcount
	if row_count == 1:
		return True
	else:
		return False

def processThread(in_q):
	cursor = conn.cursor()
	global stock_tables
	while(True):
		tweet_data = in_q.get()
		#print(tweet_data)# Test print
		if (len(tweet_data[12]) > 800):
			continue
		if (len(tweet_data[3]) > 250):
			continue
		if tweetAlreadySeen(tweet_data, cursor):
			#print("TWEET ALREADY SEEN")# Test print
			continue
		stock_name = tweet_data[0]
		stock_table_name = stock_tables[stock_name]
		try: 
			query = "INSERT INTO "+stock_table_name+"(username,id,description,followers,following,date_tweeted,retweet_author,retweet_followers,retweet_following,retweets,favorites,status) VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
			args = (tweet_data[1],tweet_data[2],tweet_data[3],tweet_data[4],tweet_data[5],str(tweet_data[6]),tweet_data[7],tweet_data[8],tweet_data[9],tweet_data[10],tweet_data[11],tweet_data[12])
			cursor.execute(query, args)
			conn.commit()
			#print(cursor._last_executed)
			#print("Tweet added")# Test print
		except:
			print(sys.exc_info()[0])
			print(len(tweet_data[2]))
			print("Stopping process thread")
			conn.rollback()
			conn.close()
			cursor.close()
			sys.exit(1)

def getStockNames():
	cursor = conn.cursor()
	query = "SELECT * FROM List_Of_Stocks"
	global stock_tables
	try:
		cursor.execute(query)
		results = cursor.fetchall()
		for row in results:
			stock = row[0]
			table_name = row[1]
			stock_tables[stock] = table_name
	except:
   		print ("Error: unable to fetch data")
   		sys.exit(1)
	finally:
		cursor.close()

def spawnTreads():
	getStockNames()
	q = Queue()
	process_Thread = Thread(target=processThread, args=(q, ))
	global stock_tables
	for stock in stock_tables:
		created_word = stock + " stocks" 
		thread = Thread(target=searchTweets, args=(q,created_word,'en', ))
		thread.start()
	process_Thread.start()
	print("Threads started...")

spawnTreads()