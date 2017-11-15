FROM jupyter/datascience-notebook
MAINTAINER Lujianmei <anysky130@163.com>
USER root
RUN mkdir /workspace
RUN chown -R jovyan: /workspace


USER jovyan
RUN mkdir /workspace/data-scientist-notes
RUN sudo chown 1000 /workspace/data-scientist-notes
RUN mkdir /workspace/work-env
RUN sudo chown 1000 /workspace/work-env
# Get the pip packages and clean up
ADD requirements.txt /workspace
RUN pip install -r /workspace/requirements.txt \
                        && jupyter-nbextension install rise --py --sys-prefix \
                        && jupyter-nbextension enable rise --py --sys-prefix \
                        && rm -rf /home/jovayan/.cache/pip/*

ADD . /workspace/work-env
#ADD /Users/kevin/workspace/github/my-blog/work-notes/notes/data-scientist-notes /workspace/data-scientist-notes
