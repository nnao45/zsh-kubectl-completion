![v1.13](https://img.shields.io/badge/Kubernetes-v1.13-blue.svg)
![v0.1.9](https://img.shields.io/badge/version-v0.1.9-ff69b4.svg)

# nnao45/zsh-kubectl-completions
Rich [zsh](http://zsh.org) completion for the [kubectl](https://kubernetes.io/docs/reference/kubectl) command.

![GJF](https://github.com/nnao45/naoGifRepo/blob/master/_kubectl_comp_demo.gif)

# Version
| kubectl | zsh-kubectl-completion |
|:---:|:---:|
| v1.12.2 | v0.1.6 |
| v0.13.5 | v0.1.7 |
| v0.13.5 | v0.1.8 |
| v0.13.5 | v0.1.9 |

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

# Resource Filitling
This completion of kubectl has several flags corresponding to context override, for example, specify the namespace of the operation target --namespace flag should be set before entering resource name such as pod name So we will use the target namespace resource as a candidate for completion. The options supported for override are as follows.
- --kubeconfig
- --cluster
- --user
- --context
- --namespace
- --server

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
