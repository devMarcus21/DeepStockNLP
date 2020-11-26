import sys
import pymysql
# Adds a stock and table name to database

conn = pymysql.connect('localhost', 'leemg', 'MarLee21!', 'CAP_stock2020')

stock_name = sys.argv[1]
table_name = sys.argv[2]

cursor = conn.cursor()

query = "SELECT * FROM " + table_name
try:
	cursor.execute(query)

	insert = "INSERT INTO ListOfStocks(name,tablename) " \
				"VALUES(%s,%s)"
	ags = (stock_name, table_name)

	cursor.execute(insert, args)

	table = "CREATE TABLE "+table_name+" (username VARCHAR(50),followers INT,following INT,date_tweeted DATE,retweet_author VARCHAR(50),retweet_followers INT,retweet_following INT,retweets INT,favorites INT,status VARCHAR(350))"

	cursor.execute(table)
	conn.commit()

	print("Stock added")
except pymysql.err.ProgrammingError as e:
	code, msg = e.args
	if code == 1050:
		print("Stock already added")
	else:
		print(e)
finally:
	conn.rollback()
	conn.close()
	cursor.close()