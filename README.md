# John McClure's install guide
## PREREQUISITES
- vim
- brew
- iterm2
- nerd font for glyphs (i like fantasque sans mono)

## FOLLOW THESE STEPS (no guarentees)
### Install zsh, tmux, ranger

``` bash
brew install zsh zsh-completions ranger tmux fasd
```

### Make zsh the default shell
``` bash
chsh -s /bin/zsh
```

### Close the window and open new one
- use `echo $SHELL` to make sure the output is `/bin/zsh`

### Install oh-my-zsh
``` bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

add prompt theme
``` bash
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
```
``` bash
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
```

### Symlink config files
zsh
``` bash
mv ~/.zshrc ~/.zshrc.old && ln -s ~/dots/.zshrc ~/.zshrc
```
tmux
``` bash
ln -s ~/dots/.tmux.conf ~/.tmux.conf
```
``` bash
mv ~/.vimrc ~/.vimrc.old && ln -s ~/dots/.vimrc ~/.vimrc
```
- tmux
- chunkwm
- ranger
