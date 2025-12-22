FROM rocker/r-ver:latest

# RUN echo 'options(repos = c(CRAN = "https://packagemanager.posit.co/cran/__linux__/noble/latest"))' >>"${R_HOME}/etc/Rprofile.site"

ADD scripts /usr/src/local/src
RUN --mount=type=secret,id=GITHUB_PAT \
    cd /usr/src/local/src          && \
    chmod 0755 setup.sh            && \
    ./setup.sh                     && \
    rm -rf /usr/src/local/src

# extra metadata
LABEL org.opencontainers.image.source="https://github.com/ijapesigan/docker-tidyverse" \
      org.opencontainers.image.authors="Ivan Jacob Agaloos Pesigan <ijapesigan@gmail.com>"
