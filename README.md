# pyml - Docker Python Machine Learning Image
_rueedlinger/pyml_ is a Docker image to get started very quickly with state of the art Python __data wrangling__, __statistics__ __machine learning__ and __data visualization__ libraries. This image is based on the _continuumio/miniconda3_ Docker image and uses Python 3.6 with packages from conda-forge.

The following preinstalled Python libraries and [Jupyter](http://jupyter.org/) are packaged together as a Docker image: 

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
- [xgboost](https://xgboost.readthedocs.io/) 
    

## Get started

To get started with __pyml__ - (Python Machine Learning Docker Image) you can just start the Docker image with the following command.
This will start a Juypter notebook session.

    docker run -p 8888:8888 -it rueedlinger/pyml

 To use JuypterLab instead of a Juypter notebook you can use following command.

    docker run -p 8888:8888 -it rueedlinger/pyml juypterlab

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
    
You can also run a specific version of an image like _0.5_

    docker run -it rueedlinger/pyml:0.5

### Start other applications like IPython, Python or Bash

You can start IPython,

    docker run -it rueedlinger/pyml ipython
    
start a Python program (hint mount /notebooks to your local computer),

     docker run -it rueedlinger/pyml python /notebooks/run.py
     
or another executable (bash, etc.) which is available in the image.

     docker run -it rueedlinger/pyml bash

### Versions

#### Docker Images
> see https://hub.docker.com/r/rueedlinger/pyml/tags/

| Version|Description|
| --- |---|
| 0.5| latest version|
| ~~0.4~~| removed from dockerhub|
| ~~0.3~~| removed from dockerhub|
| ~~0.2~~| removed from dockerhub|
| ~~0.1~~| removed from dockerhub|

#### Python Packages
> $ pipe freeze

