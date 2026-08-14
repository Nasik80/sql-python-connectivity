import mysql.connector

conn = mysql.connector.connect(
    host="localhost",
    user="nasik",
    password="Nasik8078"
)

cursor = conn.cursor()

cursor.execute("CREATE DATABASE IF NOT EXISTS luminar")

print("Database created successfully!")

conn.close()