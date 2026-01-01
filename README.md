# dotenv

## ghostty

prereq: jetbrains mono font installed


```
mkdir -p $HOME/.config/ghostty
ln -s $PWD/ghostty/config $HOME/.config/ghostty/config
```

## .zshrc

prereq: p10k and mise installed via brew

```
ln -s $PWD/.zshrc $HOME/.zshrc
ln -s $PWD/.p10k.zsh $HOME/.p10k.zsh
ln -s $PWD/.hushlogin $HOME/.hushlogin
```

## vscode

we can't use symlink ([ref](https://github.com/microsoft/vscode/issues/194856))

```
mkdir -p "$HOME/Library/Application Support/Code/User"
cp $PWD/vscode/settings.json "$HOME/Library/Application Support/Code/User/settings.json"
```

## nvim

TODO

## mac configs

- [ ] Dock
    - [ ] Remove all apps
    - [ ] Enable auto hide
    - [ ] remove auto hide delay [ref](https://apple.stackexchange.com/questions/33600/how-can-i-make-auto-hide-show-for-the-dock-faster)
- [ ] Enable File Vault
- [ ] Displays
    - [ ] More Space
- [ ] Keyboard
    - [ ] Key Repeat Rate: fast
    - [ ] Delay Until Repeat: short
    - [ ] Disable PressAndHold
- [ ] Modifier Keys
    - [ ] CapsLock -> Esc
- [ ] Function Keys
    - [ ] Use F1, F2, etc as standard function keys
- [ ] Etc
    - [ ] Enable TouchID for sudo auth [script](https://github.com/artginzburg/sudo-touchid)

