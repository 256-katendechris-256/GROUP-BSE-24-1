#!/bin/bash

# URL to validate the service
URL="https://api.github.com/repos/256-katendechris-256/GROUP-BSE-24-1"

# API token for authentication
TOKEN="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"

# Perform the curl request with authentication
curl -H "Authorization: Bearer $TOKEN" -o /dev/null -s -w "%{http_code}\n" $URL

# Check the HTTP status code returned
if [ $? -ne 0 ]; then
    echo "Service validation failed: Unable to reach the service."
    exit 1
fi

echo "Service validated successfully."
