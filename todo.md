# To Dos

- Use import instead of include tasks - issue with variable files - https://docs.ansible.com/ansible/latest/user_guide/playbooks_variables.html#defining-variables-in-included-files-and-roles

  - better for task and tags!

- add change to /etc/pam.d/sudo to include touchid

- GT TGT files.

- <https://michaelheap.com/cowsay-and-ansible/>
- <https://github.com/bluxmit/alnoda-workspaces/tree/main/workspaces/ansible-terraform-workspace>

- Document use of --skip-tags always --tags become --ask-become-pass

- https://github.com/macsible/macsible
- https://github.com/geerlingguy/dotfiles/blob/master/.osx

- Replace most of lingon script with call to bin/lingon.sh!

  - I need a way to skip 'become' tasks like gcloud and also run only those tasks.
  - `brew update upgrade cleanup`
  - `pyenv rehash` add?
  - `docker cleanup` add?
  - `build docker` maybe?
  - install and update `gcloud` (keep list of outdated)
  - install `dotfiles` via `stow`

* Confirm README.md installation steps.
* Update list of tags in README.md
* Try `--check` (with `--diff`?) to just report differences.
* <https://github.com/ansible/ansible-modules-core/issues/960>
* ansible-playbook site.yml --forks 10 --ask-become-pass --check
* Executing one role - <https://stackoverflow.com/a/38384205>

- softwareupdate --all --install --force

- Add more `changed_when`s if necessary - review log output.

- Test all of this on:

  - intleacht
    - work.sh
    - become.sh - make sure all become tasks get executed
  - ilovemovies
    - personal.sh
  - GCE VM
    - work.sh

- Finish ci.yml - GT FIXMEs

- To go through:

  - <https://github.com/danbohea/ansible-role-macos-dock>
  - <https://github.com/fubarhouse/ansible-role-macdock>
  - <https://github.com/danbohea/ansible-role-macos-spelling>
  - <https://docs.ansible.com/ansible/latest/collections/community/general/slack_module.html>
  - <https://github.com/geerlingguy/ansible-role-dotfiles>
  - <https://github.com/hnakamur/macbook_setup>
  - <https://github.com/hnakamur/ansible-playbooks>
  - ansible Liquid Prompt ala drew-kun/ansible-ohmyzsh
  - <https://github.com/mego22/ansible-role-osx-settings>
  - <https://github.com/drew-kun/ansible-dnscrypt>
  - <https://github.com/feffi/ansible-macos-git-repos>
  - <https://github.com/fubarhouse/ansible-role-macdock>
  - <https://github.com/danbohea/ansible-role-macos-dock>
  - <https://github.com/juju4/ansible-harden-darwin>

- What are the relevant osx defaults for 1password 8? Are there any?

```shell
# https://docs.ansible.com/ansible/2.5/modules/npm_module.html
npm config set cache-min 9999999  # Setup caching

# https://docs.ansible.com/ansible/2.5/modules/bundler_module.html
bundle config build.nokogiri --use-system-libraries

echo ""
echo "Setting some permissions for homebrew."
chown -R "$(whoami):admin" "$(brew --prefix)/bin" \
                           "$(brew --prefix)/share/man/man1" \
                           "$(brew --prefix)/lib" \
                           "$(brew --prefix)/share"

echo ""
echo "Add new bash, fish, zsh to the list of 'standard' shells"
# http://stackoverflow.com/a/791244
{
    echo "$(brew --prefix)/bin/bash"
    echo "$(brew --prefix)/bin/fish"
    echo "$(brew --prefix)/bin/zsh"
} >> /etc/shells

echo ""
echo "Set bash as default shell for current user"
chsh -s "$(brew --prefix)/bin/bash"

echo "Want to open the webpages for select Chrome extensions?"
select yn in "Yes" "No"; do
  case $yn in
    Yes ) open -a "Google Chrome" \
          https://agilebits.com/onepassword/extensions \
          https://chrome.google.com/webstore/detail/bookmark-manager/gmlllbghnfkpflemihljekbapjopfjik \
          https://chrome.google.com/webstore/detail/buffer/noojglkidnpfjbincgijbaiedldjfbhh?utm_source=chrome-ntp-icon \
          https://chrome.google.com/webstore/detail/chromebleed/eeoekjnjgppnaegdjbcafdggilajhpic \
          https://chrome.google.com/webstore/detail/feedly/hipbfijinpcgfogaopmgehiegacbhmob \
          https://chrome.google.com/webstore/detail/google-calendar/ejjicmeblgpmajnghnpcppodonldlgfn?utm_source=chrome-ntp-launcher \
          https://chrome.google.com/webstore/detail/google-docs-offline/ghbmnnjooekpmoecnnnilnnbdlolhkhi \
          https://chrome.google.com/webstore/detail/google-docs/aohghmighlieiainnegkcijnfilokake?utm_source=chrome-ntp-launcher \
          https://chrome.google.com/webstore/detail/https-everywhere/gcbommkclmclpchllfjekcdonpmejbdp \
          https://chrome.google.com/webstore/detail/motivation/ofdgfpchbidcgncgfpdlpclnpaemakoj \
          https://chrome.google.com/webstore/detail/save-to-pocket/niloccemoadcdkdjlinkgdfekeahmflj \
          https://chrome.google.com/webstore/detail/serum/ffboflhdigfmnnokjjcmfipgehggjhlj \
          https://chrome.google.com/webstore/detail/smile-always/jgpmhnmjbhgkhpbgelalfpplebgfjmbf \
          https://chrome.google.com/webstore/detail/the-great-suspender/klbibkeccnjlkjkiokjodocebajanakg \
          https://chrome.google.com/webstore/detail/throttle/klmapenfmenbohghcdlilacfhckhcbnn?utm_source=chrome-ntp-icon \
          https://chrome.google.com/webstore/detail/use-https/kbkgnojednemejclpggpnhlhlhkmfidi \
          https://chrome.google.com/webstore/detail/wakatime/jnbbnacmeggbgdjgaoojpmhdlkkpblgi \
          https://chrome.google.com/webstore/detail/gmail-offline/ejidjjhkpiempkbhmpbfngldlkglhimk?utm_source=chrome-ntp-launcher
      break;;
    No ) exit;;
  esac
done

echo "Want to set the computer name? (as done via System Preferences → Sharing)"
select yn in "Yes" "No"; do
  case $yn in
    Yes ) echo 'What is your computer name going to be?'
      read -r comp_name
      scutil --set ComputerName "$comp_name"
      scutil --set HostName "$comp_name"
      scutil --set LocalHostName "$comp_name"
      defaults write \
      /Library/Preferences/SystemConfiguration/com.apple.smb.server \
      NetBIOSName -string "$comp_name"
      break;;
    No )  exit;;
  esac
done
```

```bash
readonly PLAYBOOK_REPO="https://gitlab.com/radek-sprta/ansible-personal.git"
readonly PLAYBOOK=setup.yml

ansible-pull -U "${PLAYBOOK_REPO}" -i localhost, "${PLAYBOOK}" --ask-become-pass  # FIXME: Note I can run script directly!
```

```
# at least on jan6 2019, the osx_defaults module does not allow to READ values (shame).
# alternatively run 'killall cfprefsd' command
- name: Read new iTerm profile after copying
  command: defaults read com.googlecode.iterm2
...
```
