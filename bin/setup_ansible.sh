#!/usr/bin/env bash

set -o errexit                # Exit on error. Append || true if you expect an error.
set -o errtrace               # Exit on error inside any functions or subshells.
set -o noclobber              # Don't allow overwriting files.
set -o nounset                # Don't allow use of undefined vars. Use ${VAR:-} to use an undefined VAR.
set -o pipefail               # Produce a failure return code if any pipeline command errors.
set -o xtrace                 # Copy command to output.
shopt -s failglob             # Cause globs that don't get expanded to cause errors.
shopt -s globstar 2>/dev/null # Match all files and zero or more sub-directories.



if ! type ansible > /dev/null 2>&1 ; then
    sudo easy_install pip
    sudo pip install ansible
fi

sudo mkdir -p /etc/ansible

# echo 'ansible_python_interpreter="/usr/bin/env python"'

{
echo '[local]'
echo 'localhost ansible_connection=local'
} | sudo tee -a /etc/ansible/hosts > /dev/null

mkdir -p ~/.ansible/roles

{
echo '[defaults]'
echo 'roles_path = ~/.ansible/roles'
echo ''
echo '[ssh_connection]'
echo 'pipelining = True'
echo 'control_path = /tmp/ansible-ssh-%%h-%%p-%%r'

} | tee -a ~/.ansible.cfg > /dev/null
