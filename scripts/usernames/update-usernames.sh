#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/usernames"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "username": {
      "email": "znchen720@gmail.com"
    }
  }'

echo
