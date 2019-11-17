#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

bin/watchexec --restart -w lib -w tests scripts/test-runner.sh
