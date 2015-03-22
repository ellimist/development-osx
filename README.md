# Setup OS X
Here's what to do after completing a fresh install of OS X.

### General Settings

1. __App Store__

  - Run Software Update - _Install all system updates_
  - Install softwares
  - Install Xcode

1. __Trackpad__

  - Enable tap to click
  - Secondary click with two fingers
  - Scroll direction - _natural_
  - Disable swipe between pages with two/three fingers
  - Swipe between full-screen apps with three fingers
  - Swipe up with three fingers for Mission Control

1. __Mouse__

  - Set as right button
  - Enable wipe with two fingers
  - Increase tracking

1. __Dock__

  - Clean up
  - Auto hide or position left/right (?)
  - Add white spaces
    - ```sh defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}' ```
    - ```sh killall Dock ```

1. __Finder__

  - Finder -> Preferences
    - Show [Hard disks, Extrenal disks, Connected servers] on desktop
    - New Finder windows shows - Home directory
    - Check 'Open folders in tabs istead of new windows'
    - Sidebar
      - [ ] All My Files
      - [ ] iCloud Drive
      - [X] AirDrop
      - [x] Applications
      - [x] Desktop
      - [x] Documents
      - [x] Downloads
      - [ ] Movies
      - [x] Music
      - [x] Pictures
      - [x] Home directory
      - [ ] Back to My Mac
      - [x] Connected servers
      - [x] Bonjour computers
      - [x] This Computer
      - [x] Hard disks
      - [x] Extrenal disks
      - [ ] CDs, DVDs, and iPods
      - [ ] Recent Tags
    - Advanced
      - [x] Show all filename extensions
      - [ ] Show warning before changing an extension
      - [x] Show warning before emptying the Trash
      - [x] Empty Trash securely
      - Search the Current Folder
  - Clean up menu bar 'View -> Customize Toolbar...'
  - Change view options to show Path & Status Bars

1. __Dashboard__

  - System Preferences -> Mission Control -> Dashboard -> 'Off'

1. __Desktop__

  - Right click on desktop -> Show View Options
    - Icon Size: 44x44
    - Grid Spacing: step 5
    - Text Size: 11
    - Label position: Right
    - [x] Show item info
    - [x] Show icon preview
    - Sort by: 'Kind'


### Development
1. __Automatic Install__
  1. __Run `./setup.sh`__

1. __Manual Install__
  1. __Open Xcode and agree to license__
    - Install Xcode Command Line Tools - `xcode-select --install`

  1. __Terminal__
    - Install [Homebrew](http://brew.sh/)
      - `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
      - Update brew: `brew update`
      - Upgrade installed brews: `brew upgrade`
      - Install common brews: `brew install node bash-completion git mongodb redis mysql postgresql sbt the_silver_searcher rbenv ruby-build`
      - Remove outdated brews: `brew cleanup`
    - Install global Node.js modules
      - `npm install -g grunt-cli grunt-init express express-generator`
    - Install [a Ruby version](https://github.com/sstephenson/rbenv#installing-ruby-versions) (last one I used was 1.9.3-p551)
      - Set a [global Ruby version](global Ruby version)
      - Install common gems: `gem install git-up sass jekyll rouge`
    - Install [Heroku Toolbelt](https://toolbelt.heroku.com/)
    - Download this project - [Download](https://github.com/ktabori/development-osx/archive/master.zip)
    - Install fonts from `/Assets/Fonts` directory
    - Edit `sudo nano ~/.bashrc`
      - Copy and paste content from `/Assets/Bash/.bashrc`
    - Edit `sudo nano ~/.gitconfig`
      - Copy, paste and edit content from `/Assets/Bash/.gitconfig`
    - Add `/Assets/Bash/.jump` in `~/`

1. __Only manual configurations__
  - Terminal -> Preferencies -> Profiles -> Settings dropdown -> Import
    - `/Assets/Bash/base16-flat-krta.terminal`
  - [Generate new SSH key](https://help.github.com/articles/generating-ssh-keys/)
  - [Generate an access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/) for Terminal to auth your GitHub account when 2FA is enabled

### Install Apps

1. __Browsers__
  - [Google Chrome](https://www.google.com/chrome/)
  - [Firefox](https://www.mozilla.org/en-US/firefox/new/)

1. __Editors__
  - [Atom](https://atom.io/)
  - [Sublime Text](http://www.sublimetext.com/)
  - [WebStorm](https://www.jetbrains.com/webstorm/)

1. __System Addons__
  - [Cactus](http://cactusformac.com/) - menubar app for managing local websites
  - [Anvil](http://anvilformac.com/) - another app for managing local websites
  - [f.lux](https://justgetflux.com/) - makes the color of your computer's display adapt to the time of day
  - [Dropbox](https://www.dropbox.com/downloading?os=mac) - file sync
  - [Shuttle](http://fitztrev.github.io/shuttle/) - menubar app for instant SSH
  - [Cinch](http://www.irradiatedsoftware.com/cinch/) - snap apps
  - [1password](https://agilebits.com/onepassword) - password managment
  - [Shimo](http://www.chungwasoft.com/shimo/) - VPN client
  - [Alfred](http://www.alfredapp.com/) - better Spotlight

1. __Database Clients__
  - [Sequel Pro](http://www.sequelpro.com/) for MySQL
  - [Redis Desktop](https://github.com/uglide/RedisDesktopManager) for Redis
  - [Postico](https://eggerapps.at/postico/) for PostgreSQL
  - [Robomongo](http://robomongo.org/) for MongoDB

1. __Graphic Design__
  - [Adobe Creative Cloud](http://www.adobe.com/)
  - [Sketch](http://bohemiancoding.com/sketch/)
  - [Skala Color](http://bjango.com/mac/skalacolor/) - better color picker

1. __File Managers__
 - [Cyberduck](https://cyberduck.io/)
 - [Transmit](http://panic.com/transmit/)

1. __Virtualization__
 - [Virtual Box](https://www.virtualbox.org/wiki/Downloads)
 - [Parallels Desktop](http://www.parallels.com/eu/products/desktop/)
 - [VMware Fusion](http://www.vmware.com/products/fusion)
 - [IE VM's](https://www.modern.ie/en-us)

1. __Other Apps__
 - [Slack](https://itunes.apple.com/us/app/slack/id803453959?mt=12) - team communication
 - [Kaleidoscope](http://www.kaleidoscopeapp.com/) - diffs, merge and compare
 - [MacDown](http://macdown.uranusjr.com/) - markdown editor
 - [Mou](http://25.io/mou/) - markdown too
 - [Charles](http://www.charlesproxy.com/) - web debugging proxy
 - [CoRD](http://cord.sourceforge.net/) - remote desktop
 - [The Unarchiver](https://itunes.apple.com/en/app/the-unarchiver/id425424353?mt=12) - for `.rar`'s
 - [Dash](http://kapeli.com/dash) - offline searchable API documentations
 - [SourceTree](http://www.sourcetreeapp.com/) - Git & Mercurial client
