[![v0.1.4](https://img.shields.io/badge/version-v0.1.4-ff69b4.svg)](https://github.com/nnao45/pexpo/releases/tag/v0.1.4)

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
for example, you set `~/.zsh/completion`, 
```bash
$ curl -fLo ~/.zsh/completion_kubectl \ 
  https://raw.githubusercontent.com/nnao45/zsh-kubectl-completion/master/_kubectl
$ exec zsh
```

## And...
If you want to complete list is "non grouped", you set additional attr.  
(I don't like grouped complete list when same word comment.)

By default,
```bash
$ kubectl describe namespaces <TAB>
namespace
kkk  jjj  iii  hhh  ggg  fff  eee  ddd  ccc  bbb  aaa
vvv  uuu  ttt  sss  rrr  qqq  ppp  ooo  nnn  mmm  lll
zzz  yyy  xxx  www                                     -- Active
```

Add this setting in your `.zshrc`,
```bash
zstyle ':completion:*:*:kubectl:*' list-grouped false
```

Show this😍
```bash
$ kubectl describe namespaces <TAB>
namespace
aaa  -- Active
bbb  -- Active
ccc  -- Active
ddd  -- Active
eee  -- Active
fff  -- Active
ggg  -- Active
hhh  -- Active
iii  -- Active
jjj  -- Active
kkk  -- Active
lll  -- Active
mmm  -- Active
nnn  -- Active
ooo  -- Active
ppp  -- Active
qqq  -- Active
rrr  -- Active
sss  -- Active
ttt  -- Active
uuu  -- Active
vvv  -- Active
www  -- Active
xxx  -- Active
yyy  -- Active
zzz  -- Active
```
