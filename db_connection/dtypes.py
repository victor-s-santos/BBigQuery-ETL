import mysql.connector as mysqldb
import pandas as pd
import os


class MySQLConnection:

    def __init__(self, dict_credentials: dict) -> None:
        self.dict_credentials = dict_credentials
        self.db = mysqldb.connect(
                host = self.dict_credentials["HOST"],
                user = self.dict_credentials["USER"],
                password = self.dict_credentials["PASSWORD"],
                database = self.dict_credentials["DB_NAME"],
                port = self.dict_credentials["PORT"]
        )
        self.my_cursor = self.db.cursor()
        self.current_path = os.getcwd()


    def retrieve_one_sample(self):
        try:
            self.my_cursor.execute("SELECT * FROM sample")
            print(self.my_cursor.fetchone())
            self.db.close()
        except Exception as e:
            print(f"An error has been occured: {e}")

    def retrieve_df_head(self, query):
        try:
            df = pd.read_sql(query, self.db)
            print(df.head())
            self.db.close()

        except Exception as e:
            self.db.close()
            return f"An error: {e}"

    def export_to_csv(self, query, output_filename):
        try:
            file_path = os.path.join(self.current_path, "output_files", output_filename)
            df = pd.read_sql(query, self.db)
            df.to_csv(file_path)
            print("Sucess!")
            self.db.close()

        except Exception as e:
            self.db.close()
            return f"An error: {e}"


if __name__ == "__main__":
    db_credentials = {
        "HOST": "localhost",
        "USER": "usuario",
        "PASSWORD": "senha",
        "DB_NAME": "base_de_dados",
        "PORT": 3306
    }

    try:
        db = MySQLConnection(dict_credentials=db_credentials)
        export_csv = db.export_to_csv(query="SELECT * FROM sample", output_filename="sample.csv")
        print(f"Sucess: {export_csv}")
    except Exception as e:
        print(f"An error: {e}")
