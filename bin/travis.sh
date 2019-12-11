#!/usr/bin/env bash

ansible-playbook main.yml --inventory inventory --skip-tags skip-travis

ansible-playbook main.yml --inventory inventory --skip-tags skip-travis --tags "$TAGS"
