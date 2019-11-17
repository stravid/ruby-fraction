#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

bin/watchexec --restart -w src -w tests scripts/test-runner.sh
