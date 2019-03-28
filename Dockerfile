FROM jupyter/datascience-notebook

MAINTAINER kiwamizamurai

RUN pip install jupyterlab
RUN pip install xgboost

RUN jupyter serverextension enable --py jupyterlab