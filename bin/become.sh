#!/usr/bin/env bash

ansible-playbook main.yml \
    --inventory inventory \
    --ask-become-pass \
    --tags "become"
