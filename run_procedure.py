import sys
import mysql.connector

db_config = {
    "host": "data-management-server-4.cbxlqxkadwhn.us-east-1.rds.amazonaws.com",
    "user": "GorkemAkdogan",
    "password": "569f1097a98fdaa500d9da399631fd7f9ef8c4d6",
    "database": "group04db"
}

if __name__ == "__main__":
    procedure_name = sys.argv[1]
    params = sys.argv[2:]
    try:
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor()

        # Execute the specific procedure with the provided list of parameters
        cursor.callproc(procedure_name, params)
        conn.commit()

        print(f"Success! Executed {procedure_name} with {len(params)} parameters.")

    except mysql.connector.Error as err:
        print(f"Database Error: {err}")
    finally:
        if 'conn' in locals() and conn.is_connected():
            cursor.close()
            conn.close()