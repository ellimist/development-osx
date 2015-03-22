# Setup OS X
Here's what to do after completing a fresh install of OS X.

### General Settings

1. __App Store__

  - Run Software Update - _Install all system updates_
  - Install softwares
  - Install Xcode

1. __Trackpad__

  - Enable tap to click
  - Secoundary click with two fingers
  - Scroll direction - _natural_
  - Swipe between pages with three fingers
  - Swipe between full-screen apps with four fingers
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

1. __Open Xcode and agree to license__
  - Install Xcode Command Line Tools - `xcode-select --install`

1. __Terminal__
  - Install [Node.js](https://nodejs.org/)
  - Install [Homebrew](http://brew.sh/)
    - `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
  - Install [Grunt.js CLI](http://gruntjs.com/)
    - `npm install -g grunt-cli` 
  - [Generate new SSH key](https://help.github.com/articles/generating-ssh-keys/)
  - [Generate an access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/) for Terminal to auth your GitHub account when 2FA is enabled
  - Clone this project - `git@github.com:ktabori/development-osx.git`
  - Install fonts from `/Assets/Fonts` directory
  - Terminal -> Preferencies -> Profiles -> Settings dropdown -> Import 
    - `/Assets/Bash/base16-flat-krta.terminal`
  - Edit `sudo nano ~/.bashrc``
    - Copy and paste content from `/Assets/Bash/.bashrc`
  
