import mysql.connector as mysqldb


class MySQLConnection:

    def __init__(self, dict_credentials: dict) -> None:
        self.dict_credentials = dict_credentials

    def connect_object(self):
        try:
            db = mysqldb.connect(
                host = self.dict_credentials["HOST"],
                user = self.dict_credentials["USER"],
                password = self.dict_credentials["PASSWORD"],
                database = self.dict_credentials["DB_NAME"],
                port = self.dict_credentials["PORT"]
            )
            my_cursor = db.cursor()
            my_cursor.execute("SELECT * FROM sample")
            return my_cursor.fetchone()
        except Exception as e:
            print(f"An error has been occured: {e}")
    


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
        receive_obj = db.connect_object()
        print(f"Sucess: {receive_obj}")
    except Exception as e:
        print(f"An error: {e}")



