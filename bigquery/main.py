from google.cloud import bigquery
import os

os.environ["GOOGLE_APPLICATION_CREDENTIALS"] = "/home/victor/Projetos/Estudo_BigQuery/bigquery/service_account.json"

client = bigquery.Client(project="estudo-63ee3")

sql_query = "SELECT * FROM `estudo-63ee3.sample_test.tabela_teste`"
query_job = client.query(sql_query)

results = query_job.result()

for r in results:
    print(r)