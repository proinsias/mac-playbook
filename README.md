# Mac Ansible Playbook

[![Build Status](https://travis-ci.org/proinsias/mac-playbook.svg?branch=master)](https://travis-ci.com/proinsias/mac-playbook)
[![Known Vulnerabilities](https://snyk.io/test/github/proinsias/mac-playbook/badge.svg?targetFile=Gemfile.lock)](https://snyk.io/test/github/proinsias/mac-playbook?targetFile=Gemfile.lock)

This playbook installs and configures most of the software I use on my Mac.
It is inspired by and based on
[geerlingguy/mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook/)
.

## Installation

1. Ensure Apple's command line tools are installed (`xcode-select --install`
   to launch the installer, and `sudo xcodebuild -license accept` to accept license agreement).
2. Clone this repository to your local drive.
3. Run `$ ./bin/setup_ansible.sh` inside this directory to install and configure Ansible.
4. Run `$ ansible-galaxy install --role-file  requirements.yml` inside this directory
   to install required Ansible roles.
5. Run `ansible-playbook main.yml --inventory inventory --ask-become-pass` inside this directory.
   Enter your account password when prompted.

> Note: If some Homebrew commands fail,
> you might need to agree to Xcode's license or fix some other Brew issue.
> Run `brew doctor` to see if this is the case.

### Running a specific set of tagged tasks

You can filter which part of the provisioning process to run
by specifying a set of tags using `ansible-playbook`'s `--tags` flag.
The tags available are:

* `extra-packages`
* `homebrew`
* `mas`
* `osx-defaults`

```bash
ansible-playbook main.yml --inventory inventory --ask-become-pass --tags "homebrew,mas"
```

## Overriding Defaults

You can override any of the defaults configured in `default.config.yml`
by creating a `config.yml` file and setting the overrides in that file.
For example, you can customize the installed packages and apps with something like:

```bash
homebrew_installed_packages:
  - cowsay
  - git
  - go

mas_installed_apps:
  - { id: 443987910, name: "1Password" }
  - { id: 498486288, name: "Quick Resizer" }
  - { id: 557168941, name: "Tweetbot" }
  - { id: 497799835, name: "Xcode" }

composer_packages:
  - name: hirak/prestissimo
  - name: drush/drush
    version: '^8.1'

gem_packages:
  - name: bundler
    state: latest

npm_packages:
  - name: webpack

pip_packages:
  - name: mkdocs
```

Any variable can be overridden in `config.yml`;
see the supporting roles' documentation for a complete list of available variables.

## Testing the Playbook

I use a [Mac OS X VirtualBox VM](https://github.com/AlexanderWillner/runMacOSinVirtualBox)
to test changes locally, and this project is
[continuously tested on Travis CI's macOS infrastructure](https://travis-ci.com/proinsias/mac-playbook).

<!-- FIXME: Setup local VM to test -->
<!-- FIXME: Confirm above installation steps. -->
<!-- FIXME: Update list of tags. -->

<!-- FIXME: Try `--check` (with `--diff`?) to just report differences. -->
<!-- https://github.com/ansible/ansible-modules-core/issues/960 -->

<!-- ansible-playbook site.yml --forks 10 --ask-become-pass --check -->

<!-- FIXME: Executing one role - https://stackoverflow.com/a/38384205 -->
