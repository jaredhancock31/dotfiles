autoload -Uz compinit
compinit

#source ~/.env.sh
# code completion for kubectl (assuming it is aliased to 'k
source <(kubectl completion zsh)
alias k='kubectl'

# Path to your oh-my-zsh installation.
export ZSH="/Users/jarhanco/.oh-my-zsh"
setopt extended_glob

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
 DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  kubectl
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
#source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
alias viconf='vi ~/.config/nvim/init.vim'
alias zshconfig="vi ~/.zshrc"
alias ohmyzsh="vi ~/.oh-my-zsh"
alias l='ls -al'
alias qfind="find . -name "
alias myip='curl https://ipinfo.io/ip'
alias netCons='lsof -i'                                                 # netCons:      Show all open TCP/IP sockets
alias flushDNS='dscacheutil -flushcache'                                # flushDNS:     Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'                                 # lsock:        Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'                       # lsockU:       Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'                       # lsockT:       Display only open TCP sockets
alias ipInfo0='ipconfig getpacket en0'                                  # ipInfo0:      Get info on connections for en0
alias ipInfo1='ipconfig getpacket en1'                                  # ipInfo1:      Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN'                            # openPorts:    All listening connections
alias showBlocked='sudo ipfw list'                                      # showBlocked:  All ipfw rules inc/ blocked IPs
alias s='git status'                                                    
alias gco='git checkout'
alias vi='nvim'
alias vim='nvim'
alias k='kubectl'
alias gcp='gcloud'
alias updatedb="/usr/libexec/locate.updatedb"
alias memHogsTop='top -l 1 -o rsize | head -20'
alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'
alias cpuHogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'


PATH=/bin:/usr/bin:/usr/local/bin:${PATH}
export PATH="/usr/local/opt/sqlite/bin:$PATH"
#   -------------------------------
#    ENVIRONMENT CONFIGURATION
#   -------------------------------
# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH="/usr/local/Cellar/python/3.6.5/bin/python3:${PATH}"
export PATH="/usr/local/lib/python3.6/site-packages:${PATH}"
export PATH="/usr/bin/python:${PATH}"
export PATH="/usr/local/opt/openssl/bin:${PATH}"
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH="$HOME/.npm/bin:${PATH}"
export PATH="$PATH:/Library/Application Support/VMware/VMware Fusion"
export PATH="$PATH:/usr/local/kubebuilder/bin"
export GOPATH="$HOME/go"
export GO111MODULE=on
#export PYTHONPATH="/Library/Frameworks/Python.framework/Versions/3.5/lib/python3.5/site-packages/"
export NODE_PATH='/usr/local/lib/node_modules'
export GRADLE_HOME="/usr/local/bin/gradle"
export PATH="${GRADLE_HOME}/bin:$PATH"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PATH="/usr/local/opt/gettext/bin:$PATH"
