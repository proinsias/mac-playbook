#!/usr/bin/env bash

set -o xtrace                 # Copy command to output.
set -o errexit                # Exit on error. Append || true if you expect an error.
set -o errtrace               # Exit on error inside any functions or subshells.
set -o noclobber              # Don't allow overwriting files.
set -o nounset                # Don't allow use of undefined vars. Use ${VAR:-} to use an undefined VAR.
set -o pipefail               # Produce a failure return code if any pipeline command errors.
shopt -s failglob             # Cause globs that don't get expanded to cause errors.
# FIXME:
#shopt -s globstar 2>/dev/null # Match all files and zero or more sub-directories.

ansible-galaxy install --role-file requirements.yml
