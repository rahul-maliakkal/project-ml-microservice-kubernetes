#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker login
docker build -t django-app:v0 .

# Step 2: 
# List docker images
docker images

# Step 3: 
# Run flask app
docker run -t -p 8000:80 django-app:v0