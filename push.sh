#!/usr/bin/env bash

# Script to Push Change(s) to GitLab
# Author: Jugal Kishore

set -e

# Colors
NC="\033[0m"
RED="\033[0;31m"
GREEN="\033[1;32m"
YELLOW="\033[1;33m"

# Variable(s)
GL_REF="gitlab.com/crazyuploader/ip_asn_json.git"

# Check if GITLAB_TOKEN Environment Variable is available
if [[ -z "${GITLAB_TOKEN}" ]]; then
    echo -e "${YELLOW}'GITLAB_TOKEN' ${RED}Environment Variable not found, exiting...${NC}"
    exit 1
fi

# Clone GitLab Repository
git clone https://"${GL_REF}" ~/ip_asn_json

cp /tmp/prefix_asn_mapping_v4.json ~/ip_asn_json
cp /tmp/prefix_asn_mapping_v6.json ~/ip_asn_json

# Setting Git Identity
git config --global user.email "4677226-crazyuploader@users.noreply.gitlab.com"
git config --global user.name "Jugal Kishore"

cd ~/ip_asn_json
echo "JSON File(s) as on: \n$(date)" > README.md
if [[ -z $(git status --porcelain) ]]; then
    echo -e "${GREEN}Nothing to Commit${NC}"
else
    git add .
    git commit -m "GitHub Actions Daily Runner"
    git push https://crazyuploader:"${GITLAB_TOKEN}"@"${GL_REF}" HEAD:master
    echo ""
    echo -e "${GREEN}Change(s) Pushed to: ${YELLOW}https://"${GL_REF}"${NC}"
fi
