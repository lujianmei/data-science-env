#!/bin/bash
# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.

# Set default values for environment variables required by notebook compose
# configuration file.

# Container name
: "${NAME:=datascience-notebook}"
export NAME

# Exposed container port
: ${PORT:=8888}
export PORT

# Container work volume name
: "${WORK_VOLUME:=/Users/kevin/workspace/github/my-blog/work-notes/notes/data-scientist-notes}"
export WORK_VOLUME

# Container secrets volume name
: "${SECRETS_VOLUME:=~/.scerets}"
export SECRETS_VOLUME="~/.scerets"
