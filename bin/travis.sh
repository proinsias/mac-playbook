#!/usr/bin/env bash

ansible-playbook main.yml --inventory inventory --tags "$TAGS" --skip-tags skip-travis
