#!/bin/sh

export SLUGIFY_USES_TEXT_UNIDECODE=yes
export AIRFLOW_HOME=`pwd`/airflow_home
export AIRFLOW__CORE__LOAD_EXAMPLES=False