#!/bin/bash
# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.

# Set default values for environment variables required by notebook compose
# configuration file.

# Container name
: "${NAME:=scrapy}"
export NAME

# Exposed container port
: ${PORT:=8888}
export PORT

# Container work volume name
: "${WORK_VOLUME:=$NAME-work}"
export WORK_VOLUME

# Container secrets volume name
: "${SECRETS_VOLUME:=$NAME-secrets}"
export SECRETS_VOLUME

# Container version of notebook
: "${SCRAPY_IMAGE_VERSION:=$SCRAPY_IMAGE_VERSION}"
export SCRAPY_IMAGE_VERSION


