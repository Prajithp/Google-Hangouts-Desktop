# Unofficial Gmail Hangouts for Desktop

A simple & beautiful desktop client for google hangouts which runs on Linux, OS X and Windows. Built with [NW.js](http://nwjs.io/).
the major work of this project is done by @Aluxian and @pierremtb


## Build

### Pre-requisites

    # install gulp
    npm install -g gulp

    # install dependencies
    npm install
    cd src/
    npm install


* **wine**: If you're on OS X/Linux and want to build for Windows, you need [Wine](http://winehq.org/) installed. Wine is required in order
to set the correct icon for the exe. If you don't have Wine, you can comment out the `winIco` field in `gulpfile`.
* **makensis**: Required by the `pack:win32` task in `gulpfile` to create the Windows installer.
* [**fpm**](https://github.com/jordansissel/fpm): Required by the `pack:linux{32|64}:deb` tasks in `gulpfile` to create the Linux installers.

Quick install on OS X:

    brew install wine makensis
    sudo gem install fpm

### OS X: pack the app in a .dmg

    gulp pack:osx64

### Windows: create the installer

    gulp pack:win32

### Linux 32/64-bit: pack the app in a .deb

    gulp pack:linux{32|64}:deb

The output is in `./dist`. Take a look at `gulpfile.coffee` for additional tasks.

**TIP**: use the `--toolbar` parameter to quickly build the app with the toolbar on. E.g. `gulp build:win32 --toolbar`.

**TIP**: use `gulp build:win32 --noicon` to quickly build the Windows app without the icon.

**TIP**: for OS X, use the `run:osx64` task to build the app and run it immediately.
