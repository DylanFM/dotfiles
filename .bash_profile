PATH=$HOME/.rbenv/bin:/usr/local/git/bin:/usr/local/bin:/usr/local/heroku/bin:$PATH

# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{exports,aliases}; do
	[ -r "$file" ] && source "$file"
done
unset file

PATH=$GOPATH/bin:$PATH

# Git completion! thx Matta
source ~/.git-completion.bash

# Git prompt
source ~/.git-prompt

# RBenv
eval "$(rbenv init -)"
