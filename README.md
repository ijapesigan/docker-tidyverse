ijapesigan/tidyverse
================
Ivan Jacob Agaloos Pesigan
2023-11-17

<!-- README.md is generated from .setup/readme/README.Rmd. Please edit that file -->
<!-- badges: start -->

[![Make
Project](https://github.com/ijapesigan/docker-tidyverse/actions/workflows/make.yml/badge.svg)](https://github.com/ijapesigan/docker-tidyverse/actions/workflows/make.yml)
[![Docker Build and Push
\[multi\]](https://github.com/ijapesigan/docker-tidyverse/actions/workflows/docker-build-push-multi.yml/badge.svg)](https://github.com/ijapesigan/docker-tidyverse/actions/workflows/docker-build-push-multi.yml)
[!Docker Build and Push Tidyverse \[multi\]
(Daily)](https://github.com/ijapesigan/docker-tidyverse/actions/workflows/docker-build-push-daily-multi-tidyverse.yml/badge.svg)\](<https://github.com/ijapesigan/docker-tidyverse/actions/workflows/docker-build-push-daily-multi-tidyverse.yml>)
[![Shell
Check](https://github.com/ijapesigan/docker-tidyverse/actions/workflows/shellcheck.yml/badge.svg)](https://github.com/ijapesigan/docker-tidyverse/actions/workflows/shellcheck.yml)
<!-- badges: end -->

## Description

A Docker container for `R` projects based on the [Rocker
Project](https://rocker-project.org/) with tidyverse for linux/amd64 and
linux/arm64 architectures.

## Docker Container

To launch `Rstudio Server`, run the following.

``` bash
docker run --rm -ti -e PASSWORD=yourpassword -p 127.0.0.1:8787:8787 ijapesigan/tidyverse:main
```

Open `http://localhost:8787` on your web browser to launch
`Rstudio Server`.

- username: rstudio
- password: yourpassword
