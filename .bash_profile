PATH=$HOME/.rbenv/bin:/usr/local/bin:/Library/Ruby/Gems/1.8/bin:/Library/Frameworks/GDAL.framework/Programs:$PATH
#export PATH="$HOME/.rbenv/bin:$PATH"

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
