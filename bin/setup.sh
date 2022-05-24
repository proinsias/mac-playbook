#!/usr/bin/env bash

set -o errexit                # Exit on error. Append || true if you expect an error.
set -o errtrace               # Exit on error inside any functions or subshells.
set -o noclobber              # Don't allow overwriting files.
set -o nounset                # Don't allow use of undefined vars. Use ${VAR:-} to use an undefined VAR.
set -o pipefail               # Produce a failure return code if any pipeline command errors.
shopt -s failglob             # Cause globs that don't get expanded to cause errors.
shopt -s globstar 2>/dev/null # Match all files and zero or more sub-directories.

echo "Cloning mac-playbook repository..."

git clone git@github.com:proinsias/mac-playbook.git

echo "...done!"

cd mac-playbook

echo "Install and configure Ansible..."
./bin/setup_ansible.sh

echo "Install required Ansible roles..."
./bin/install_dependencies.sh

cd -

# FIXME:
  #readonly PLAYBOOK_REPO="https://gitlab.com/radek-sprta/ansible-personal.git"
  #readonly PLAYBOOK=setup.yml
  #
  # ansible-pull -U "${PLAYBOOK_REPO}" -i localhost, "${PLAYBOOK}" --ask-become-pass
  # FIXME: Note I can run script directly!
