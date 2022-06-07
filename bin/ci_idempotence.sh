#!/usr/bin/env bash

set -o errexit                # Exit on error. Append || true if you expect an error.
set -o errtrace               # Exit on error inside any functions or subshells.
set -o noclobber              # Don't allow overwriting files.
set -o nounset                # Don't allow use of undefined vars. Use ${VAR:-} to use an undefined VAR.
set -o pipefail               # Produce a failure return code if any pipeline command errors.
set -o xtrace                 # Copy command to output.
shopt -s failglob             # Cause globs that don't get expanded to cause errors.
shopt -s globstar 2>/dev/null # Match all files and zero or more sub-directories.

idempotence=$(mktemp)
./bin/ci.sh | tee -a "${idempotence}"
if tail "${idempotence}" | grep -q 'changed=0.*failed=0'; then
  echo 'Idempotence test: pass'
  exit 0
else
  echo 'Idempotence test: fail'
  exit 1
fi
