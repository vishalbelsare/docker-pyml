#!/bin/bash

docker run -v ${PWD}/notebooks:/notebooks -p8888:8888 -it rueedlinger/pyml-test $1
