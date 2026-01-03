#!/bin/bash

TAG=$1

if [ -z "$TAG" ]; then
  echo "Usage: ./rollback.sh <tag>"
  exit 1
fi

echo "Rolling back to firmware version: $TAG"

git checkout $TAG

echo "Rollback complete."
