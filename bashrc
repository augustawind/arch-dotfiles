#
# ~/.bash_profile
#

# check for an interactive session
[ -z "$PS1" ] && return

# PATH -----------------------------------------------------------------------

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/bin:$PATH"

# environment variables ------------------------------------------------------
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:/usr/local/opt/findutils/share/man:$MANPATH"
export LANG="en_US.UTF-8"
export EDITOR="/usr/bin/nvim"
export SUDO_EDITOR="$EDITOR"
export GOPATH=$HOME/work
export LESS='-R'
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"

# imports --------------------------------------------------------------------

for filename in /$HOME/.bashrc.d/*.{bash,sh}; do
    [ -e $filename ] || continue
    source $filename
done

export GITAWAREPROMPT=$HOME/.bashrc.d/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(stack --bash-completion-script stack)"

# prompt --------------------------------------------------------------------- 
export PS1="\[\033[35m\]λ\[\e[0m\] \W\[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\] -> "

# aliases --------------------------------------------------------------------

# colored output
alias ls='ls --color=auto'

# convenience
alias ..='cd ..'
alias ...='cd ...'
alias ll='ls -laF'
alias la='ls -a'
alias vim='nvim'
alias python='python3'

# safety
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias ln='ln -i'

# git
alias git='hub'
alias gs='git status'
alias gd='git diff'
alias gl='git ll'
alias ga='git add'
alias gap='git add -p'
alias gc='git commit'
alias gca='git commit -a'
alias gp='git push'
alias gpu='git push -u origin $(git rev-parse --abbrev-ref HEAD)'
alias gu='git pull'
alias gb='git branch'
alias gch='git checkout'

# custom utilities -----------------------------------------------------------

gpx() {
    case $1 in
        stage|testcenter|prod)
            echo "don't force push to $1 pls"
            return 1 ;;
        *)
            git push -f origin $(git rev-parse --abbrev-ref HEAD):$1 ;;
    esac
}

delete-branch() {
    git branch -D $1 & git push origin :$1 
}

merge-latest() {
    git checkout $1 && git pull && git checkout - && git merge -
}

mkvenv() {
    if [[ -z $1 ]]; then
        env_dir="$HOME/.venvs/$(pwd | sed 's/\//\n/g' | tail -n 1)"
    else
        env_dir=$1
    fi
    python3 -m venv $env_dir
    source "$env_dir/bin/activate"
    pip install neovim ipython ipdb
    tree $env_dir
    unset env_dir
}

# tab completion -------------------------------------------------------------

complete -cf sudo
complete -cf man
complete -cf start
complete -cf stop
complete -cf restart
complete -cf reload
complete -cf spawn

# bash history ---------------------------------------------------------------

HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

shopt -s histappend
shopt -s checkwinsize

# nvm ------------------------------------------------------------------------

export NVM_DIR="/Users/dtr/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# virtualenv -----------------------------------------------------------------

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
source /usr/bin/virtualenvwrapper.sh
export PIP_VIRTUALENV_BASE=$WORKON_HOME

# docker ---------------------------------------------------------------------

function board () {
    docker exec -it "$1" bash
}
