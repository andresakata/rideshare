#!/bin/bash

export RIDESHARE_DB_PASSWORD="password"
export DB_URL="postgres://postgres:password@localhost:5432/postgres"RIDESHARE_DB_PASSWORD

ENV_FILE=".env"

# Check if the .env file exists
if [ -f "$ENV_FILE" ]; then
  # Read each line in the .env file
  while IFS= read -r line || [ -n "$line" ]; do
    # Ignore lines that are comments or empty
    if [[ ! "$line" =~ ^# ]] && [[ -n "$line" ]]; then
      # Export the variable
      export "$line"
    fi
  done < "$ENV_FILE"
else
  echo "$ENV_FILE file not found."
fi
