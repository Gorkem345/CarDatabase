import sys
import mysql.connector
import json

db_config = {
    "host": "data-management-server-4.cbxlqxkadwhn.us-east-1.rds.amazonaws.com",
    "user": "GorkemAkdogan",
    "password": "569f1097a98fdaa500d9da399631fd7f9ef8c4d6",
    "database": "group04db"
}

if __name__ == "__main__":
    # The first argument is the procedure name (e.g., GetCarByYear)
    target_view = sys.argv[1]

    # Capture all remaining command line arguments as a list of parameters
    # If the user provides 0 parameters, this will be an empty list []
    #params = sys.argv[2:]

    try:
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor(dictionary=True)

        # callproc takes the name and a list/tuple of arguments.
        # It automatically formats the CALL statement safely.
        query = f"select * from {target_view} LIMIT 1000"
        cursor.execute(query)
        rows = cursor.fetchall()

        print(json.dumps(rows, default=str))
        #print(f"Successfully executed {procedure_name} with {len(params)} parameters.")
    except mysql.connector.Error as err:
        print(json.dumps({"error": str(err)}))
    finally:
        if 'conn' in locals() and conn.is_connected():
            cursor.close()
            conn.close()
