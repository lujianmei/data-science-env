FROM jupyter/scipy-notebook

MAINTAINER lujianmei <anysky130@163.com>

USER root

# bash instead of dash to use source
RUN ln -snf /bin/bash /bin/sh

USER jovyan

# Python3, Installs bleeding edge Theano and Keras 
# HDF5 package to save / load weights
RUN conda install -y tensorflow \
&& pip install --upgrade --no-deps git+git://github.com/fchollet/keras.git \
&& conda install --no-deps -y h5py

# Solve the issue of "compiletime version 3.5 of module 'tensorflow.python.framework.fast_tensor_util' does not match runtime version 3.6"
# https://github.com/lakshayg/tensorflow-build
RUN pip install --ignore-installed --upgrade https://github.com/sigilioso/tensorflow-build/raw/master/tensorflow-1.4.0-cp36-cp36m-linux_x86_64.whl
