#!/bin/bash

set -e

# If buildkit secret is mounted, expose it to the environment for R to use.
if [ -f /run/secrets/GITHUB_PAT ]; then
  export GITHUB_PAT="$(cat /run/secrets/GITHUB_PAT)"
fi

# Optional safe debug (do not print the token):
if [ -n "$GITHUB_PAT" ]; then
  echo "GITHUB_PAT is set (length=$(echo -n $GITHUB_PAT | wc -c))"
else
  echo "GITHUB_PAT NOT set"
fi

bash ubuntu_sys_pkg.sh
bash ubuntu_cran_pkg.sh
bash rproject_sys.sh
bash rproject.sh
bash post.sh
