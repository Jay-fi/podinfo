#!/bin/bash
set -ex

echo "--Hellooooo---------------------------------"
echo "BEGIN podinfo jwt test"
echo "-----------------------------------------"
TOKEN=$(curl -sd 'test' ${URL}/token | jq -r .token) &&
curl -sH "Authorization: Bearer ${TOKEN}" ${URL}/token/validate | grep test
echo "-----------------------------------------"
echo "END podinfo jwt test"
echo "-----------------------------------------"
