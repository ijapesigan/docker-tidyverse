
<!-- README.md is generated from .setup/readme/README.Rmd, which rProject's
docker template writes. Edit .setup/readme/description.md, scripts/cran.txt,
scripts/github.txt, or .setup/scripts/project.R instead. -->

# ijapesigan/tidyverse

<!-- badges: start -->

[![Docker Build and Push Tidyverse \[multi\]
(Daily)](https://github.com/ijapesigan/docker-tidyverse/actions/workflows/docker-build-push-daily-multi-tidyverse.yml/badge.svg)](https://github.com/ijapesigan/docker-tidyverse/actions/workflows/docker-build-push-daily-multi-tidyverse.yml)
[![Docker Build and Push
\[multi\]](https://github.com/ijapesigan/docker-tidyverse/actions/workflows/docker-build-push-multi.yml/badge.svg)](https://github.com/ijapesigan/docker-tidyverse/actions/workflows/docker-build-push-multi.yml)
[![Make
Project](https://github.com/ijapesigan/docker-tidyverse/actions/workflows/make.yml/badge.svg)](https://github.com/ijapesigan/docker-tidyverse/actions/workflows/make.yml)
[![Non-ASCII
Check](https://github.com/ijapesigan/docker-tidyverse/actions/workflows/non-ascii-check.yml/badge.svg)](https://github.com/ijapesigan/docker-tidyverse/actions/workflows/non-ascii-check.yml)
[![Shell
Check](https://github.com/ijapesigan/docker-tidyverse/actions/workflows/shellcheck.yml/badge.svg)](https://github.com/ijapesigan/docker-tidyverse/actions/workflows/shellcheck.yml)
<!-- badges: end -->

## Description

The base of the daily chain (`ijapesigan/tidyverse` to
`ijapesigan/docs`): [Rocker](https://rocker-project.org/)’s
`rocker/r-ver` with the tidyverse, devtools, rmarkdown, and rProject.
Its daily build starts `ijapesigan/dplyr`.

Based on `rocker/r-ver:latest`; built for linux/amd64 and linux/arm64.
Source: <https://github.com/ijapesigan/docker-tidyverse>.

## Use

Docker (Docker Hub or the GitHub Container Registry):

``` bash
docker run -it ijapesigan/tidyverse
docker run -it ghcr.io/ijapesigan/tidyverse
```

Apptainer:

``` bash
apptainer pull tidyverse.sif docker://ijapesigan/tidyverse
apptainer shell tidyverse.sif
```

## Contents

R packages from CRAN (`scripts/cran.txt`), with their dependencies:

tidyverse, devtools, rmarkdown, BiocManager, vroom, gert, DT, V8

## Builds

- Docker Build and Push Tidyverse \[multi\] (Daily)
  (`docker-build-push-daily-multi-tidyverse.yml`): daily at 00:00 UTC,
  when the base image is rebuilt
- Docker Build and Push \[multi\] (`docker-build-push-multi.yml`): after
  Make Project
- Make Project (`make.yml`): on push
- Non-ASCII Check (`non-ascii-check.yml`): after Make Project
- Shell Check (`shellcheck.yml`): after Make Project

The images are pushed to Docker Hub and the GitHub Container Registry as
`ijapesigan/tidyverse:latest`.
