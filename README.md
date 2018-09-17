# Ubuntu 16.04 (Xenial Xerus) + i3

## Display

![Screenshot](workspace.png)

# Configuration

## Compton

For animations & transparency

Compton is a standalone compositor for Xorg, suitable for use with window managers that do not provide compositing.

```
cp setup-i3/.config/compton.conf ~/.config/compton.conf
```

## Dunst

A lightweight replacement for the notification-daemons 

```
cp setup-i3/.config/dunst/dunstrc ~/.config/dunst/dunstrc
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

## Rofi

A window switcher, application launcher and dmenu replacement.

```
sudo apt-get install rofi
cp setup-i3/.Xresources ~/.Xresources
```

## Sound

A great way to improve the overall sound quality on Linux.

```
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo apt-get update
sudo apt-get install pulseaudio-equalizer
```
