#!/usr/bin/env bash
set -euvo pipefail
IFS=$'\n\t'
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

REMOTE="www-data@webserver-plain"

mv .env-prod .env

echo "Uploading sources"
rsync -avzh "$DIR/" "$REMOTE:/srv/p2/"

echo "Running post deploy scripts"
ssh "$REMOTE" -- bash /srv/p2/post-deploy.sh
