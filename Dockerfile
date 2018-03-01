FROM continuumio/miniconda3:4.4.10

ENV PATH="/opt/conda/bin:${PATH}"

RUN conda update -n base conda -y

RUN conda install python=3.6 -y

RUN conda config --add channels conda-forge

RUN conda install jupyter matplotlib seaborn scikit-learn pandas numpy scipy statsmodels tensorflow keras nltk textblob mlxtend xgboost -y

VOLUME ["/notebooks"]
EXPOSE 8888

ENTRYPOINT jupyter notebook --notebook-dir=/notebooks --ip='*' --port=8888 --no-browser --allow-root

