# dotenv

## ghostty

```
mkdir -p $HOME/.config/ghostty
ln -s $PWD/ghostty/config $HOME/.config/ghostty/config
```

## .zshrc

prereq: p10k installed via brew

```
ln -s $PWD/.zshrc $HOME/.zshrc
ln -s $PWD/.p10k.zsh $HOME/.p10k.zsh
```

## vscode

we can't use symlink ([ref](https://github.com/microsoft/vscode/issues/194856))

```
cp $PWD/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
```

## nvim

TODO

## mac configs

1. use touchid for sudo
2. remove dock authoide delay
3. config keyboard
   1. remove key repeat delay
   2. remap capslock to esc
   3. use fn keys 

