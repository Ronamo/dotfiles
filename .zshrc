# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
export PATH=/Applications/MAMP/bin/php/php5.5.10/bin:$PATH
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="blinks"
# ZSH_THEME="pygmalion"
ZSH_THEME="miloshadzic"

source $ZSH/oh-my-zsh.sh
unsetopt correct


# Example aliases
alias zshconfig="subl ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#alias sub="open -a 'Sublime Text 2'"
alias gvim='open ~/Applications/MacVim.app'
alias sub='subl'
alias subd='subl . &'
alias cls="clear"
alias fixow='/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain user;killall Finder;echo "Open With has been rebuilt, Finder will relaunch"'
alias boxit='boxes -f /usr/Local/Cellar/boxes/1.1/share/boxes-config'
alias findme='open -a Finder ./'
alias bower='noglob bower'

alias sshjrh='ssh jaronhendrix.com@jaronhendrix.com'

gitrdone() {
	git add -A
	git commit -m $1
	git push
}

alias spot='nocorrect spot'

# TASK WARRIOR SPECIFIC
alias tw='cls; task'
alias twl='task list'
alias twb='task burndown'
twa  ()  { task add $1 $2 $3 }
tws  ()  { task $1 start }
twst ()  { task $1 stop }
twm  ()  { task $1 modify $2 $3 $4 }


alias brewinfo='~/applications/bashscripts/brewinfo'
alias df='df -h'
alias cls='clear'

# LS in Color
alias ls='ls -G'
# LS -(A)ll files by file (s)ize in
# (h)uman readable, with (F)symbols in (X)columns
alias la='ls -asFxh'
# LS - List directories
alias lsd='la -F | grep --colour "/"'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew osx sublime)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
