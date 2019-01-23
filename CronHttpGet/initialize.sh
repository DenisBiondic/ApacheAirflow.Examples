#!/bin/sh

rm -rf airflow_home/logs
rm -rf airflow_home/airflow.cfg
rm -rf airflow_home/unittests.cfg
rm -rf airflow_home/airflow.db

source load-env-variables.sh

pip install -r requirements.txt

airflow initdb

# connection for this example
airflow connections --add --conn_id http_google --conn_type http --conn_host https://google.de