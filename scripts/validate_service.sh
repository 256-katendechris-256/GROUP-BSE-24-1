#!/bin/bash

# URL to validate the service (public GitHub repository)
URL="https://api.github.com/repos/256-katendechris-256/GROUP-BSE-24-1"

# Perform the curl request without authentication
HTTP_STATUS=$(curl -o /dev/null -s -w "%{http_code}" $URL)

# Output the HTTP status code
echo "HTTP Status Code: $HTTP_STATUS"

# Check if the request was successful (HTTP status code 200 indicates success)
if [ "$HTTP_STATUS" -ne 200 ]; then
    echo "Service validation failed: HTTP status $HTTP_STATUS."
    exit 1
fi

echo "Service validated successfully."
