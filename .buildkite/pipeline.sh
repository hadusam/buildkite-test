#!/bin/bash

# exit immediately on failure, or if an undefined variable is used
set -eu

# begin the pipeline.yml file
echo "steps:"

# add a new command step to run the tests in each test directory
for test_dir in $(cd ./test && ls -d test_*); do
  echo "  - command: \"echo "${test_dir}"\""
  echo "    label: \"test: "${test_dir}"\""
done