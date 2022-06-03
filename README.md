# Mac Ansible Playbook

This playbook installs and configures most of the software I use on my Mac.
It is inspired by and based on
[geerlingguy/mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook/)
.

## Table of Contents

<!-- toc -->

- [Installation](#installation)
  - [Running a specific set of tagged tasks](#running-a-specific-set-of-tagged-tasks)
- [Overriding Defaults](#overriding-defaults)
- [Testing the Playbook](#testing-the-playbook)

<!-- tocstop -->

## Installation

Setup this repo and its dependencies:

```bash
curl --location --remote-name https://raw.githubusercontent.com/proinsias/mac-playbook/master/bin/setup.sh && bash setup.sh
```

Run the following command inside this directory:

FIXME: Point to script.

```bash
ansible-playbook main.yml --inventory inventory --ask-become-pass
```

Enter your account password when prompted.

Note: If some Homebrew commands fail,
you might need to agree to Xcode's license or fix some other Brew issue.
Run `brew doctor` to see if this is the case.

### Running a specific set of tagged tasks

You can filter which part of the provisioning process to run
by specifying a set of tags using `ansible-playbook`'s `--tags` flag.
The tags available are:

FIXME: update

- `extra-packages`
- `homebrew`
- `mas`
- `osx-defaults`

```bash
ansible-playbook main.yml --inventory inventory --ask-become-pass --tags "homebrew,mas"
```
