This repository contains a personal collection of Apache Airflow examples. 

# Notes

- to start with an example, call `source initialize.sh` in the example folder (env variables setup, packages setup, etc)
- Python dependency management is done with classical pip install / pip freeze / pip install -r requirements.txt. A better alternative would be pyenv / pipenv, but Airflow does not seem to work with these (pipenv install apache-airflow fails)
  - https://github.com/pypa/pipenv/issues/2823
  - https://github.com/pypa/pipenv/issues/2583

