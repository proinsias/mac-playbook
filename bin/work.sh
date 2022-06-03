#!/usr/bin/env bash

ansible-playbook main.yml \
    --inventory inventory \
    --skip-tags "become" \
    --tags "all,macos,linux,work"
