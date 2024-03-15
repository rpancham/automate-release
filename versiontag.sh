#!/bin/bash
echo "Enter the version number:"
read version
echo "Triggering workflow with version $version..."
gh workflow run workflow-name.yml -f version=$version
