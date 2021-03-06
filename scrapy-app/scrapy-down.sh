#!/bin/bash
# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Setup environment
source "$DIR/scrapy-env.sh"

# Bring down the notebook container, using container name as project name
docker-compose -f "$DIR/scrapy-docker-compose.yml" -p "$NAME" down
