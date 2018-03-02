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
| 0.6| latest version|
| ~~0.5~~| removed from dockerhub|
| ~~0.4~~| removed from dockerhub|
| ~~0.3~~| removed from dockerhub|
| ~~0.2~~| removed from dockerhub|
| ~~0.1~~| removed from dockerhub|

#### Python Packages

Installed python packages (pipe freeze)

    absl-py==0.1.10
    asn1crypto==0.24.0
    backports.functools-lru-cache==1.5
    backports.weakref==1.0rc1
    bleach==1.5.0
    blinker==1.4
    boto==2.48.0
    boto3==1.6.2
    botocore==1.9.3
    bz2file==0.98
    certifi==2018.1.18
    cffi==1.11.4
    chardet==3.0.4
    conda==4.3.34
    cryptography==2.1.4
    cycler==0.10.0
    decorator==4.2.1
    docutils==0.14
    entrypoints==0.2.3
    gensim==3.4.0
    h5py==2.7.1
    html5lib==0.9999999
    idna==2.6
    ipykernel==4.8.2
    ipython==6.2.1
    ipython-genutils==0.2.0
    ipywidgets==7.1.2
    jedi==0.11.1
    Jinja2==2.10
    jmespath==0.9.3
    jsonschema==2.6.0
    jupyter-client==5.2.2
    jupyter-console==5.2.0
    jupyter-core==4.4.0
    jupyterlab==0.31.10
    jupyterlab-launcher==0.10.5
    Keras==2.0.9
    Mako==1.0.7
    Markdown==2.6.11
    MarkupSafe==1.0
    matplotlib==2.1.2
    mistune==0.8.3
    nbconvert==5.3.1
    nbformat==4.4.0
    nltk==3.2.5
    notebook==5.4.0
    numpy==1.14.1
    oauthlib==2.0.6
    pandas==0.22.0
    pandocfilters==1.4.1
    parso==0.1.1
    patsy==0.5.0
    pexpect==4.4.0
    pickleshare==0.7.4
    prompt-toolkit==1.0.15
    protobuf==3.5.1
    ptyprocess==0.5.2
    pycosat==0.6.3
    pycparser==2.18
    Pygments==2.2.0
    pygpu==0.7.5
    PyJWT==1.5.3
    pyOpenSSL==17.5.0
    pyparsing==2.2.0
    PySocks==1.6.7
    python-crfsuite==0.9.2
    python-dateutil==2.6.1
    pytz==2018.3
    PyYAML==3.12
    pyzmq==17.0.0
    qtconsole==4.3.1
    requests==2.18.4
    requests-oauthlib==0.8.0
    ruamel-yaml==0.15.35
    s3transfer==0.1.13
    scikit-learn==0.19.1
    scipy==1.0.0
    seaborn==0.8.1
    Send2Trash==1.5.0
    simplegeneric==0.8.1
    six==1.11.0
    smart-open==1.5.6
    statsmodels==0.8.0
    tensorflow==1.5.0
    tensorflow-tensorboard==1.5.1
    terminado==0.8.1
    testpath==0.3.1
    textblob==0.15.0
    Theano==1.0.1
    tornado==4.5.3
    traitlets==4.3.2
    twython==3.6.0
    urllib3==1.22
    wcwidth==0.1.7
    webencodings==0.5
    Werkzeug==0.14.1
    widgetsnbextension==3.1.4
    xgboost==0.7.post3