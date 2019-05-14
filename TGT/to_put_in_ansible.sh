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
echo "Install ruby via homebrew's rbenv"
brew install rbenv ruby-build # Do not install ruby via homebrew!
echo Installing ruby 2.3.3...
echo Use 'rbenv install -l' to list the possible versions and find latest stable
rbenv install 2.3.3
rbenv global 2.3.3
gem update --system
gem install bundler # http://bundler.io/

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

# Check if license accepted!
sudo xcodebuild -license accept

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



# For linux:
echo ""
echo "Update apt-get"
apt-get update

echo ""
echo "Installing prerequisites for homebrew"
apt-get install build-essential curl git python-setuptools ruby
