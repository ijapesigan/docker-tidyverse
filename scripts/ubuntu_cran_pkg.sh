#!/bin/bash

# based on https://raw.githubusercontent.com/rocker-org/rocker-versioned2/master/scripts/install_tidyverse.sh

set -e

# tidyverse
install2.r --error --skipinstalled -n -1 \
    ggplot2
