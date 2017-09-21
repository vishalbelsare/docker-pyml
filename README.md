# pyml - Docker Python Machine Learning Image
_rueedlinger/pyml_ is Docker image to get started very quickly with the state of the art 
Python machine learning and data visualization libraries. pyml is based on the _continuumio/anaconda3_ Docker 
image.

Installed Python libraries:

- jupyter 
- matplotlib 
- seaborn
- statsmodels
- scikit-learn 
- pandas 
- numpy 
- scipy 

## Get started

To get started with __pyml__ - (Python Machine Learning Docker Image) you can just start the Dcoker image with the following Docker command.  

    docker docker run -t rueedlinger/pyml

Next you shoudl see the folling output in the command line.

        Copy/paste this URL into your browser when you connect for the first time,
        to login with a token:
            http://localhost:8888/?token=e00b3199838bcc3f15a3227fd52752eec4992ad8111d1b57

To connect to the Jupyter Notebook you have to copy/paste this URL into your browser.

## Note
_pyml_ is based on the __continuumio/anaconda3__ Docker image.

## Todo
- add TensorFlow
- add Keras