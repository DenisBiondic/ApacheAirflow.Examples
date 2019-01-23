#!/bin/sh

rm -rf airflow_home/logs
rm -rf airflow_home/airflow.cfg
rm -rf airflow_home/unittests.cfg
rm -rf airflow_home/airflow.db

export SLUGIFY_USES_TEXT_UNIDECODE=yes
export AIRFLOW_HOME=`pwd`/airflow_home
export AIRFLOW__CORE__LOAD_EXAMPLES=False

pip install -r requirements.txt

airflow initdb