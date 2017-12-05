FROM jupyter/datascience-notebook
MAINTAINER Lujianmei <anysky130@163.com>
USER root
RUN mkdir /workspace
RUN chown -R jovyan: /workspace

RUN apt-get update
RUN apt-get -y install openssl
RUN apt-get -y install libssl-dev


USER jovyan
RUN mkdir /workspace/work-env
RUN mkdir /home/jovyan/data-scientist-notes
# Get the pip packages and clean up
ADD requirements.txt /workspace
RUN pip install -r /workspace/requirements.txt \
                        && jupyter contrib nbextension install --user \
                        && jupyter-nbextension install rise --py --sys-prefix \
                        && jupyter-nbextension enable rise --py --sys-prefix \
                        && rm -rf /home/jovayan/.cache/pip/*


ADD . /workspace/work-env

