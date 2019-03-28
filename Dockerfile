FROM jupyter/datascience-notebook

MAINTAINER kiwamizamurai

RUN jupyter serverextension enable --py jupyterlab
RUN pip install jupyterlab
RUN pip install xgboost
RUN pip install plotly
RUN curl -L  "https://oscdl.ipa.go.jp/IPAexfont/ipaexg00301.zip" > font.zip
RUN unzip font.zip
RUN cp ipaexg00301/ipaexg.ttf /opt/conda/lib/python3.7/site-packages/matplotlib/mpl-data/fonts/ttf/ipaexg.ttf
RUN echo "font.family : IPAexGothic" >>  /opt/conda/lib/python3.7/site-packages/matplotlib/mpl-data/matplotlibrc
