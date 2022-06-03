#!/usr/bin/env bash

ansible-playbook main.yml \
    --inventory inventory \
    --skip-tags "become" \
    --tags "personal"
