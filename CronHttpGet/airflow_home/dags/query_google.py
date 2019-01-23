import airflow
from airflow import DAG
from airflow.operators.http_operator import SimpleHttpOperator

import urllib3
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

default_args = {
    'owner': 'airflow',
    'depends_on_past': False,
    'start_date': airflow.utils.dates.days_ago(2),
    'email': ['airflow@example.com'],
    'email_on_failure': False,
    'email_on_retry': False,
    'retries': 0,
}

dag = DAG('query_google', default_args=default_args)

t1 = SimpleHttpOperator(
    task_id='the_query',
    log_response=True,
    http_conn_id='http_google',
    method='GET',
    endpoint='',
    dag=dag,
)
