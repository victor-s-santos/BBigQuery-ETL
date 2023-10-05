import mysql.connector as mysqldb
import pandas as pd


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


    def retrieve_one_sample(self):
        try:
            self.my_cursor.execute("SELECT * FROM sample")
            return self.my_cursor.fetchone()
        except Exception as e:
            print(f"An error has been occured: {e}")

    def retrieve_df_head(self):
        ...

    def retrieve_df_types(self, query):
        try:
            df = pd.read_sql(query, self.db)
            #self.my_cursor.execute(query)
            #return self.my_cursor.fetchall()
            return df.dtypes
        except Exception as e:
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
        receive_obj = db.retrieve_df_types(query="SELECT * FROM sample")
        print(f"Sucess: {receive_obj}")
    except Exception as e:
        print(f"An error: {e}")
