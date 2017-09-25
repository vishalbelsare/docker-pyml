# pyml - Docker Python Machine Learning Image
_rueedlinger/pyml_ is a Docker image to get started very quickly with state of the art Python machine learning and data visualization libraries. This image is based on the _continuumio/anaconda3_ Docker image. In addition the following Python libraries were installed:

- jupyter 
- matplotlib 
- seaborn
- statsmodels
- scikit-learn 
- pandas 
- numpy 
- scipy 
- keras
- tensorflow
- nltk
- textblob
- mlxtend
- xgboost 

To try out some machine learning algorithms have a look at the _Python Machine Learning Snippets_ (https://github.com/rueedlinger/machine-learning-snippets) - an ongoing project with collection of various machine learning examples as Jupyter Notebooks 
with scikit-learn, statsmodel, numpy and other libraries.

## Get started

To get started with __pyml__ - (Python Machine Learning Docker Image) you can just start the Docker image with the following command.  

    docker run -p 8888:8888 -it rueedlinger/pyml

Next you shoud see the folling output in the command line.

        Copy/paste this URL into your browser when you connect for the first time,
        to login with a token:
            http://localhost:8888/?token=e00b3199838bcc3f15a3227fd52752eec4992ad8111d1b57

To connect to the Jupyter Notebook you have to copy/paste this URL into your browser.

### How to change the port mapping
The Juypter Notebook is running on port _8888_. To change the port mapping to the 
container you can us the _-p_. 

This binds port 8888 of the container to port 9090 on your local machine.
    
    docker run -p 9090:8888 -it rueedlinger/pyml

### How to change the volume
To store your work on the local machine you can mount the volume '/notebooks'. 
With the -v flag you can specify where the volume is mounted on your local machine.

This mounts the volume _/notebooks_ in the container to the local directory _/test/notebooks_.

    docker run -v /test/notebooks:/notebooks -p 8888:8888 -it rueedlinger/pyml

### How to use a specific image version
To use the latest version of an image you can run the following command

    docker run -it rueedlinger/pyml
    
or use the _latest_ tag.

     docker run -it rueedlinger/pyml:latest
    
You can also run a specific version of an image like _0.1_

    docker run -it rueedlinger/pyml:0.1