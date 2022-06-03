# To Dos

- GT TGT files.

- Replace most of lingon script with call to this!

  - I need a way to skip 'become' tasks like gcloud and also run only those tasks.
  - `brew update upgrade cleanup` - switch to community.general.homebrew
  - `pyenv rehash` add?
  - `docker cleanup` add?
  - `build docker` maybe?
  - install and update `gcloud` (keep list of outdated)
  - install `dotfiles` via `stow`

- What are the relevant osx defaults for 1password 8? Are there any?

* Confirm README.md installation steps.
* Update list of tags.
* Try `--check` (with `--diff`?) to just report differences.
* <https://github.com/ansible/ansible-modules-core/issues/960>
* ansible-playbook site.yml --forks 10 --ask-become-pass --check
* Executing one role - <https://stackoverflow.com/a/38384205>

- Add more `changed_when`s if necessary - review log output.

- Test all of this on:

  - intleacht
    - work.sh
    - become.sh - make sure all become tasks get executed
  - ilovemovies
    - personal.sh
  - GCE VM
    - work.sh

- Mark become tasks with become tags so I can avoid them during lingon.

  - Use community package for non-become installs and upgrades, and non-community package for setup?

- Github action on mac to test!

  - Finish ci.yml - GT FIXMEs

- To go through:

  - <https://github.com/danbohea/ansible-role-macos-dock>
  - <https://github.com/fubarhouse/ansible-role-macdock>
  - <https://github.com/danbohea/ansible-role-macos-spelling>
  - <https://docs.ansible.com/ansible/latest/collections/community/general/slack_module.html>
  - <https://github.com/geerlingguy/ansible-role-dotfiles>
  - <https://github.com/hnakamur/macbook_setup>
  - <https://github.com/hnakamur/ansible-playbooks>
  - <https://github.com/hnakamur/ansible-role-osx-login-shell>
    - Add `/usr/local/bin/bash` and `/opt/homebrew/bin/bash`
  - ansible Liquid Prompt ala drew-kun/ansible-ohmyzsh
  - <https://github.com/mego22/ansible-role-osx-settings>
  - <https://github.com/osxstrap/ansible-osx-software-update>
  - <https://github.com/drew-kun/ansible-dnscrypt>
  - <https://github.com/drew-kun/ansible-sshd>
  - <https://github.com/drew-kun/ansible-macos_terminal>
  - <https://github.com/feffi/ansible-macos-git-repos>
  - <https://github.com/fubarhouse/ansible-role-macdock>
  - <https://github.com/danbohea/ansible-role-macos-dock>
  - <https://github.com/juju4/ansible-harden-darwin>

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

```ansible
- name: install SSH key
 sudo: yes
 authorized_key:
   key: "ssh-rsa [...]"
   user: "{{ansible_user_id}}"
   state: present

- name: make fish default shell
 become: yes
 user:
   name: "{{ user }}"
   shell: /usr/bin/fish
```

```bash
readonly PLAYBOOK_REPO="https://gitlab.com/radek-sprta/ansible-personal.git"
readonly PLAYBOOK=setup.yml

ansible-pull -U "${PLAYBOOK_REPO}" -i localhost, "${PLAYBOOK}" --ask-become-pass  # FIXME: Note I can run script directly!
```
