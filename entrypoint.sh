#!/bin/sh

set -e

if [ -z "$CLOUD_PROVIDER" ]; then
  echo "CLOUD_PROVIDER is not set. Please set this as a variable in your GitHub Action."
  exit 1
fi


echo "Installing dependencies..."
npm install

echo "Building site"
npm run build

echo "Deploying your site to $CLOUD_PRODIVDER"
# TODO add if else for each cloud provider