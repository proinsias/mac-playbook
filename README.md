# Mac Ansible Playbook

[![Build Status](https://travis-ci.org/proinsias/mac-playbook.svg?branch=master)](https://travis-ci.org/proinsias/mac-playbook)

This playbook installs and configures most of the software I use on my Mac.
It is inspired by and based on
[geerlingguy/mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook/)
.

## Installation

  1. Ensure Apple's command line tools are installed (`xcode-select --install`
     to launch the installer).
  2. [Install Ansible](http://docs.ansible.com/intro_installation.html).
  3. Clone this repository to your local drive.
  4. Run `$ ansible-galaxy install -r requirements.yml` inside this directory
     to install required Ansible roles.
  5. Run `ansible-playbook main.yml -i inventory -K` inside this directory.
     Enter your account password when prompted.

> Note: If some Homebrew commands fail,
> you might need to agree to Xcode's license or fix some other Brew issue.
> Run `brew doctor` to see if this is the case.

### Running a specific set of tagged tasks

You can filter which part of the provisioning process to run
by specifying a set of tags using `ansible-playbook`'s `--tags` flag.
The tags available are `dotfiles`, `homebrew`, `mas`, `extra-packages` and `osx`.

```bash
ansible-playbook main.yml -i inventory -K --tags "dotfiles,homebrew"
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

I use a [Mac OS X VirtualBox VM](https://github.com/geerlingguy/mac-osx-virtualbox-vm)
to test changes locally, and this project is
[continuously tested on Travis CI's macOS infrastructure](https://travis-ci.org/proinsias/mac-playbook).
