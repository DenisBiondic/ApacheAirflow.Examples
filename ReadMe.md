This repository contains a personal collection of Apache Airflow examples. Developed on Ubuntu 18.04. 

# How to (relevant for each example)

- for local development / playground: 
  - if you didn't do so, initialize a python virtual environment: `python3 -m venv venv`
  - even if you have a venv directory, each shell needs to load the virtual environment: `source venv/bin/activate`
  - at this point, you can either open the folder with PyCharm or visual studio code
  - call `source initialize.sh` in the example folder to setup airflow, env variables, reset db etc.
  - after you write / modify the dag, run `python airflow_home/dags/....py` to make sure there are no compile errors
  - to test a single task, you can run something like `airflow test query_google the_query  2019-01-25`
  - to test a scheduled DAG, you can run something like `airflow backfill query_google -s 2019-01-21 -e 2019-01-22` (beware, this will schedule as many runs needed between -s and -e, according to the DAG schedule_interval)
- for testing the DAGs locally but in a production-like environment with docker, simple run `docker-compose up --build`

# Notes

- Python dependency management is done with classical pip install / pip freeze / pip install -r requirements.txt. A better alternative would be pyenv / pipenv, but Airflow does not seem to work with these (pipenv install apache-airflow fails)
  - https://github.com/pypa/pipenv/issues/2823
  - https://github.com/pypa/pipenv/issues/2583
