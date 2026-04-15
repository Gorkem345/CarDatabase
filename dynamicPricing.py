import mysql.connector
from datetime import datetime

conn = mysql.connector.connect(
    host="data-management-server-4.cbxlqxkadwhn.us-east-1.rds.amazonaws.com",
    user="GorkemAkdogan",
    password="569f1097a98fdaa500d9da399631fd7f9ef8c4d6",
    database="group04db"
)

cursor = conn.cursor(dictionary=True)

month = datetime.now().month

if month in [12, 1, 2]:
    season = "Winter"
    multiplier = 1.30
elif month in [3, 4, 5]:
    season = "Spring"
    multiplier = 1.10
elif month in [6, 7, 8]:
    season = "Summer"
    multiplier = 1.25
else:
    season = "Autumn"
    multiplier = 1.00

print(f"Current season: {season}")
print(f"Multiplier: {multiplier}")

cursor.execute("SELECT car_id, price_per_day FROM Car")
cars = cursor.fetchall()

for car in cars:
    car_id = car["car_id"]
    current_price = int(car["price_per_day"])
    new_price = round(current_price * multiplier)

    cursor.execute("""
        UPDATE Car
        SET price_per_day = %s
        WHERE car_id = %s
    """, (new_price, car_id))

    print(f"Car {car_id}: {current_price} -> {new_price}")

conn.commit()

print("All car prices updated successfully.")

cursor.close()
conn.close()
