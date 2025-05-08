# Mac Ansible Playbook

This playbook installs and configures most of the software I use on my Mac.

## Table of Contents

<!-- toc -->

- [Installation](#installation)
- [Running the entire playbook](#running-the-entire-playbook)
    - [Running a specific set of tagged tasks](#running-a-specific-set-of-tagged-tasks)
- [Updating the Table of Contents of this file](#updating-the-table-of-contents-of-this-file)
- [Thanks](#thanks)

<!-- tocstop -->

## Installation

Setup this repo and its dependencies:

```bash
curl --location --remote-name \
https://raw.githubusercontent.com/proinsias/mac-playbook/master/bin/setup.sh \
&& bash setup.sh
```

## Running the entire playbook

Run the following command inside this directory:

```bash
ansible-playbook main.yml --ask-become-pass --inventory inventory
```

Enter your account password when prompted.

Note: If some Homebrew commands fail,
you might need to agree to Xcode's license or fix some other Brew issue.
Run `brew doctor` to see if this is the case.

### Running a specific set of tagged tasks

You can filter which part of the provisioning process to run
by specifying a set of tags using `ansible-playbook`'s `--tags` flag.
The tags available are:

- `become`
- `personal`
- `work`

For example:

```bash
ansible-playbook main.yml --inventory inventory --skip-tags "become" --tags "personal"
```

## Updating the Table of Contents of this file

We use [markdown-toc](https://github.com/jonschlinkert/markdown-toc)
to automatically generate the table of contents for this file. You can
update the TOC using:

```bash
# npm install --global markdown-toc

markdown-toc -i README.md
```

## Thanks

Thanks to the authors of the many ansible roles and collections I borrowed from:

- [appian.macos-power](https://github.com/appian/ansible-role-macos-power)
- [danbohea.rbenv](https://github.com/danbohea/ansible-role-rbenv)
- [feffi.macos-defaults](https://github.com/feffi/ansible-macos-defaults.git)
- [feffi.macos-standby](https://github.com/feffi/ansible-macos-standby.git)
- [fubarhouse.macdock](https://github.com/fubarhouse/ansible-role-macdock)
- [geerlingguy.mac](https://github.com/geerlingguy/ansible-collection-mac)
- [geerlingguy,mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook/)
- [kinglouie.macos](https://github.com/kinglouie/ansible-role-macos)
- [lafarer.osx-defaults](https://github.com/lafarer/ansible-role-osx-defaults)
