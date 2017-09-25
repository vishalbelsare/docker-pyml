FROM continuumio/anaconda3:4.4.0

ENV PATH="/opt/conda/bin:${PATH}"

RUN conda config --add channels conda-forge

RUN conda install jupyter matplotlib seaborn scikit-learn pandas numpy scipy statsmodels tensorflow keras nltk textblob mlxtend -y

VOLUME ["/notebooks"]
EXPOSE 8888

ENTRYPOINT jupyter notebook --notebook-dir=/notebooks --ip='*' --port=8888 --no-browser --allow-root

