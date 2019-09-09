# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias gpg='gpg2'


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /home/max/.asdf/installs/nodejs/12.6.0/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /home/max/.asdf/installs/nodejs/12.6.0/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /home/max/.asdf/installs/nodejs/12.6.0/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /home/max/.asdf/installs/nodejs/12.6.0/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /home/max/.asdf/installs/nodejs/12.6.0/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash ] && . /home/max/.asdf/installs/nodejs/12.6.0/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash