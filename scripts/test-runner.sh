#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

make unit-tests
