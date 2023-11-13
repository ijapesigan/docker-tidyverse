#!/bin/bash

git clone git@github.com:ijapesigan/docker-tidyverse.git
rm -rf "$PWD.git"
mv docker-tidyverse/.git "$PWD"
rm -rf docker-tidyverse
