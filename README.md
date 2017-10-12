# pyml - Docker Python Machine Learning Image
_rueedlinger/pyml_ is a Docker image to get started very quickly with state of the art Python machine learning and data visualization libraries. This image is based on the _continuumio/anaconda3_ Docker image. When you start the image a Jupyter notebook with the following preinstalled Python libraries is started:

- [matplotlib](https://matplotlib.org/)
- [seaborn](https://seaborn.pydata.org/)
- [statsmodels](http://www.statsmodels.org/)
- [scikit-learn](http://scikit-learn.org/) 
- [pandas](http://pandas.pydata.org/) 
- [numpy](http://www.numpy.org/) 
- [scipy](https://www.scipy.org/) 
- [keras](https://keras.io/)
- [tensorflow](https://www.tensorflow.org/)
- [nltk](http://www.nltk.org/)
- [textblob](https://textblob.readthedocs.io)
- [mlxtend](http://rasbt.github.io/mlxtend/)
- [xgboost](https://xgboost.readthedocs.io/) 
    

## Get started

To get started with __pyml__ - (Python Machine Learning Docker Image) you can just start the Docker image with the following command.  

    docker run -p 8888:8888 -it rueedlinger/pyml

Next you shoud see the following output in the command line.

        Copy/paste this URL into your browser when you connect for the first time,
        to login with a token:
            http://localhost:8888/?token=e00b3199838bcc3f15a3227fd52752eec4992ad8111d1b57

To connect to the Jupyter notebook you have to copy/paste this URL into your browser. Now you can use Jupyter 
to try out some of the included Python libraries and get started with Python and machine learning.

To try out some machine learning algorithms have a look at the _Python Machine Learning Snippets_ (https://github.com/rueedlinger/machine-learning-snippets) - an ongoing project with collection of various machine learning examples as Jupyter notebooks 
with scikit-learn, statsmodel, numpy and other libraries.


### How to change the default port for Jupyter
The Juypter notebook is running on port _8888_. To change the port mapping to the 
container you can us the _-p_. 

This binds port 8888 of the container to port 9090 on your local machine.
    
    docker run -p 9090:8888 -it rueedlinger/pyml

### How change the default working diercory for Jupyter
You can share voulmes between the container and the local host. 
As default '/notebooks' will be used in the container as the Jupyter notebook 
working directory. With the -v flag you can specify the directory on your local machine as 
new working directory for Jupyter.

This mounts the volume _/notebooks_ in the container to the local directory _/test/notebooks_.

    docker run -v /test/notebooks:/notebooks -p 8888:8888 -it rueedlinger/pyml

### How to use a specific image version
To use the latest version of an image you can run the following command

    docker run -it rueedlinger/pyml
    
or use the _latest_ tag.

     docker run -it rueedlinger/pyml:latest
    
You can also run a specific version of an image like _0.3_

    docker run -it rueedlinger/pyml:0.3