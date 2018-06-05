# John McClure's install guide
## PREREQUISITES
- vim
- brew
- iterm2

## FOLLOW THESE STEPS (no guarentees)
### Install zsh, tmux, ranger

``` bash
brew install zsh zsh-completions ranger tmux
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
- tmux
- chunkwm
- ranger
