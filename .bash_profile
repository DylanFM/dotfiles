PATH=$HOME/.rbenv/bin:$GOPATH/bin:/usr/local/git/bin:/usr/local/heroku/bin:/Applications/Postgres.app/Contents/Versions/9.3/bin/:/usr/local/bin:/opt/X11/bin:/usr/bin:/bin:/usr/sbin:/sbin

# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{exports,aliases}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Git completion! thx Matta
source ~/.git-completion.bash

# Git prompt
source ~/.git-prompt

# RBenv
eval "$(rbenv init -)"
