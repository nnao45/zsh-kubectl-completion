[![v0.1.0](https://img.shields.io/badge/version-v0.1.0-ff69b4.svg)](https://github.com/nnao45/pexpo/releases/tag/v0.1.0)

# nnao45/zsh-kubectl-completions
Rich [zsh](http://zsh.org) completion for the [kubectl](https://kubernetes.io/docs/reference/kubectl) command.

# Install

## zplug
write this in your `.zshrc`.
```bash
zplug "nnao45/zsh-kubectl-completion"
```

## Prezto
```bash
$ curl -fLo ~/.zprezto/modules/completion/external/src/_kubectl \
  https://raw.githubusercontent.com/nnao45/zsh-kubectl-completion/master/_kubectl 
$ exec zsh
```

## Manual
```bash
$ curl -fLo /usr/local/share/zsh/site-functions/_kubectl \ 
  https://raw.githubusercontent.com/nnao45/zsh-kubectl-completion/master/_kubectl 
```
