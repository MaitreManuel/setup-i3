# Manjaro i3

Bonus folder memes !

## Display

Current laptop : Lenovo Thinkpad E550

![Screenshot](workspace.png)

# Configuration

## Compton

Compton is a standalone compositor for Xorg, suitable for use with window managers that do not provide compositing.

```
cp setup-i3/.config/compton.conf ~/.config/compton.conf
```

## Dunst 

A lightweight replacement for the notification-daemons 

```
cp setup-i3/.config/dunst/dunstrc ~/.config/dunst/dunstrc
```

## Gaps (for Ubuntu only)

i3 with more features.

Dependencies :

```
sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool 
```

If you got `Unable to locate package libxcb-xrm-dev`, then do this :

```
git clone https://github.com/Airblader/xcb-util-xrm
cd xcb-util-xrm
git submodule update --init
./autogen.sh --prefix=/usr
make
sudo make install
```

Install Gaps :
```
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
git checkout gaps && git pull
autoreconf --force --install
rm -rf build
mkdir build
cd build
../configure --prefix=/usr --sysconfdir=/etc
make
sudo make install
```

## Icons

A package with Windows 10 icons.

```
cp setup-i3/.icons ~/.icons
```

## PhpStorm

A PHP IDE for working with a lot of web programming langages and frameworks.

* Color Scheme  : Midnight Commander Blue (home made)
* Theme         : Material UI

## Polybar  (for Ubuntu only)

A fast and easy-to-use status bar.

Install [dependencies](https://github.com/jaagr/polybar/wiki/Compiling) before.
Force `gcc-6` on Ubuntu 16.04 :
```
sudo apt-get update && \
sudo apt-get install build-essential software-properties-common -y && \
sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y && \
sudo apt-get update && \
sudo apt-get install gcc-snapshot -y && \
sudo apt-get update && \
sudo apt-get install gcc-6 g++-6 -y && \
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-6 60 --slave /usr/bin/g++ g++ /usr/bin/g++-6 && \
sudo apt-get install gcc-4.8 g++-4.8 -y && \
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 60 --slave /usr/bin/g++ g++ /usr/bin/g++-4.8;

# When completed, you must change to the gcc you want to work with by default. Type in your terminal:
sudo update-alternatives --config gcc

# check version
gcc -v
```

Then install polybar :

```
git clone --branch 3.2 --recursive https://github.com/jaagr/polybar
mkdir polybar/build
cd polybar/build
cmake ..
sudo make install
```

## Powerline-shell

A Powerline style prompt for your shell.

```
git clone https://github.com/b-ryan/powerline-shell
cd powerline-shell
python setup.py install
```

Add in `.bashrc` :

```
function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
```

## Rofi  (for Ubuntu only)

A window switcher, application launcher and dmenu replacement.

```
sudo apt-get install rofi
cp setup-i3/.Xresources ~/.Xresources
```

## Sound  (for Ubuntu only)

A great way to improve the overall sound quality on Linux.

```
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo apt-get update
sudo apt-get install pulseaudio-equalizer
```
