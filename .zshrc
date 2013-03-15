# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bard"

# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls -Gkh'
  alias dir='dir --color=auto'
  alias vdir='vdir --color=auto'

  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

export LESS_TERMCAP_mb=$'\E[01;110m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;110m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'            # end mode
export LESS_TERMCAP_se=$'\E[0m'            # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;182m'     # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'            # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;150m'   # begin underline

# The 'ls' family (this assumes you use the GNU ls)
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ls='ls -kh'
alias ls='ls -hFG'              # add colors for filetype recognition
alias la='ls -Al'               # show hidden files
alias lk='ls -lSr'              # sort by size
alias lc='ls -lcr'              # sort by change time
alias lu='ls -lur'              # sort by access time
alias lr='ls -lR'               # recursive ls
alias lt='ls -ltr'              # sort by date
alias lm='ls -al | less'        # pipe through 'less'
alias tree='tree -Csuf'         # nice alternative to 'ls'to)

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
# -> Prevents accidentally clobbering files.
alias mkdir='mkdir -p'

alias h='history'
alias j='jobs -l'
alias r='rlogin'
alias which='type -a'
alias ..='cd ..'
alias path='echo -e ${PATH//:/\\n}'
# Put a picture in the background
alias du='du -kh'
alias df='df -kTh'

# alias more='less'
alias top='htop'
# alias vim='vim -p'
alias v='vim'
alias EDITOR='vim'

alias t='tail -f'
alias gr='grep'
alias ldev='t ./log/development.log'
alias ltest='t ./log/test'
alias rs='bundle exec rails s'
alias rc='bundle exec rails c'

if [[ `uname` =~ "Darwin" ]] ; then
  alias gvim='mvim -p'
  alias mvim='gvim'
  alias vim='mvim'
else
  alias gvim='gvim -p'
fi

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew bundler cap capistrano coffee cp encode64 extract gem git git-extras git-hubflow git-remote-branch github heroku node npm osx rails3 rake ruby rvm ssh-agent textmate thor vagrant)

source $ZSH/oh-my-zsh.sh

# Some hacks for Ruby
export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000

# Nocorrect section
alias lg=’nocorrect lg’

# PATH config
PATH=/usr/local/bin:$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Bindkey
bindkey "[C" emacs-forward-word
bindkey "[D" backward-word
export RUBYOPT=W0Ku
# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.
