import pymysql

conn = pymysql.connect(
    host='localhost',
    user='root',
    password='anu@2710',
    database='movies_system',
    port=3306
)

cursor = conn.cursor()

# Read your SQL file
with open("movies_system.sql", "r", encoding="utf-8") as file:
    sql_commands = file.read().split(';')  # Splits on ;

# Execute SQL commands
for command in sql_commands:
    command = command.strip()
    if command:
        try:
            cursor.execute(command)
            print("Executed:", command[:80], "...")  # print first part of command
        except Exception as e:
            print(f"Failed to execute command: {command}")
            print(e)



conn.commit()
cursor.close()
conn.close()
print("✅ Database updated.")


