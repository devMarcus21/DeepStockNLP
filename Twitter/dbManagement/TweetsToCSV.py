import pymysql
from threading import Thread
from queue import Queue


def tweetsToCsv(table_name, cursor, conn):
	print(table_name)
	filename = table_name+".csv"
	file = open(filename, "w")
	query = "SELECT * FROM " + table_name
	cursor.execute(query)
	results = cursor.fetchall()
	for row in results:
		line = ""
		for element in row:
			line += str(element) + ","
		line += "\n"
		file.write(line)
	cursor.close()
	conn.close()
	file.close()
	print("Done")

def createThreads():
	q = Queue()
	conn = pymysql.connect('localhost', 'leemg', 'MarLee21!', 'CAP_stock2020')
	query = "SELECT * FROM List_Of_Stocks"
	cursor = conn.cursor()
	stock_tables = {}
	cursor.execute(query)
	results = cursor.fetchall()
	for row in results:
		stock = row[0]
		table_name = row[1]
		stock_tables[stock] = table_name
	cursor.close()
	conn.close()
	for stock in stock_tables:
		conn = pymysql.connect('localhost', 'leemg', 'MarLee21!', 'CAP_stock2020')
		cursor = conn.cursor()
		table_name = stock_tables[stock]
		thread = Thread(target=tweetsToCsv, args=(table_name, cursor, conn, ))
		thread.start()
createThreads()