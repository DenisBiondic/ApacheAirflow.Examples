#!/bin/sh

export SLUGIFY_USES_TEXT_UNIDECODE=yes
export AIRFLOW_HOME=`pwd`/airflow_home

pip install -r requirements.txt