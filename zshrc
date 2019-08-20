# If you come from bash you might have to change your $PATH.

alias vi=vim
alias weather="curl wttr.in/"

# Node packages
NPM_PACKAGES="${HOME}/.npm-packages"
PATH="$PATH:$NPM_PACKAGES/bin:$PATH"

# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
# delete if you already modified MANPATH elsewhere in your config
unset MANPATH
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
# Path to your oh-my-zsh installation.
export ZSH=/Users/moses/.oh-my-zsh

export PATH=$PATH:$(go env GOPATH)/bin

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="agnoster"
ZSH_THEME="powerlevel9k/powerlevel9k"

ZSH_DISABLE_COMPFIX="true"

typeset -ga POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh context root_indicator dir dir_writable vcs)
typeset -ga POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(background_jobs history load)

  ## Double-Lined Prompt
typeset -g POWERLEVEL9K_PROMPT_ON_NEWLINE=true
typeset -g POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
typeset -g POWERLEVEL9K_RPROMPT_ON_NEWLINE=false

  ## Other Prompt
typeset -g POWERLEVEL9K_BACKGROUND_JOBS_VERBOSE=true
typeset -g POWERLEVEL9K_STATUS_OK=true

typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=2

  #typeset -g POWERLEVEL9K_CHANGESET_HASH_LENGTH=6
  #typeset -g POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
typeset -g POWERLEVEL9K_SHORTEN_DIR_LENGTH=5
  #typeset -g POWERLEVEL9K_TIME_FORMAT="%D{%d.%m.%y}"

  ##-----Icon Set
typeset -g POWERLEVEL9K_ANDROID_ICON=$'\uF17B '              #   or  '\uE70E'  
typeset -g POWERLEVEL9K_APPLE_ICON=$'\uF179 '                # 
typeset -g POWERLEVEL9K_AWS_ICON=$'\uF1B3 '                  #  or  '\uF270 ' 
typeset -g POWERLEVEL9K_AWS_EB_ICON=$'\uF1BD  '              #   or  '\uE7AD'  
typeset -g POWERLEVEL9K_BACKGROUND_JOBS_ICON=$'\uF013 '      # 
typeset -g POWERLEVEL9K_BATTERY_ICON=$'\uF241 '              #  or  '\uF240 ' 
typeset -g POWERLEVEL9K_CARRIAGE_RETURN_ICON=$'\u21B5'       # ↵
typeset -g POWERLEVEL9K_DATE_ICON=$'\uF073 '                 # 
typeset -g POWERLEVEL9K_DISK_ICON=$'\uF0A0 '                 # 
typeset -g POWERLEVEL9K_DROPBOX_ICON=$'\UF16B'               # 
typeset -g POWERLEVEL9K_ETC_ICON=                            # or '\uF013' 
typeset -g POWERLEVEL9K_EXECUTION_TIME_ICON="Due"            #    or  '\uF252 ' 
typeset -g POWERLEVEL9K_FAIL_ICON=$'\u2718'                  # ✘  or  '\uF00D' 
typeset -g POWERLEVEL9K_FOLDER_ICON=                         # or '\uF07B '   or  '\uF115' 
typeset -g POWERLEVEL9K_FREEBSD_ICON=$'\uF30C '              # 
typeset -g POWERLEVEL9K_GO_ICON=$'\uE724'                    #  or  '\uE626' 
typeset -g POWERLEVEL9K_HOME_ICON=                           # or '\uF015' 
typeset -g POWERLEVEL9K_HOME_SUB_ICON=                       # or '\uF07C' 
typeset -g POWERLEVEL9K_JAVA_ICON=$'\U2615'                  # ☕︎
typeset -g POWERLEVEL9K_KUBERNETES_ICON=$'\U2388'            # ⎈
typeset -g POWERLEVEL9K_LARAVEL_ICON=$'\uE73f '              # 
typeset -g POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0B0'     # 
typeset -g POWERLEVEL9K_LEFT_SEGMENT_END_SEPARATOR=' '       #   or   '\uF105'  or '\uF12D' 
typeset -g POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=$' \uE0B1' # 
typeset -g POWERLEVEL9K_LINUX_ICON=$'\uF17C '                # 
typeset -g POWERLEVEL9K_LINUX_ARCH_ICON=$'\uF303'            # 
typeset -g POWERLEVEL9K_LINUX_CENTOS_ICON=$'\uF304'          # 
typeset -g POWERLEVEL9K_LINUX_COREOS_ICON=$'\uF305'          # 
typeset -g POWERLEVEL9K_LINUX_DEBIAN_ICON=$'\uF306'          # 
typeset -g POWERLEVEL9K_LINUX_ELEMENTARY_ICON=$'\uF309'      # 
typeset -g POWERLEVEL9K_LINUX_FEDORA_ICON=$'\uF30A'          # 
typeset -g POWERLEVEL9K_LINUX_GENTOO_ICON=$'\uF30D'          # 
typeset -g POWERLEVEL9K_LINUX_MAGEIA_ICON=$'\uF310'          # 
typeset -g POWERLEVEL9K_LINUX_MINT_ICON=$'\uF30E'            # 
typeset -g POWERLEVEL9K_LINUX_NIXOS_ICON=$'\uF313'           # 
typeset -g POWERLEVEL9K_LINUX_MANJARO_ICON=$'\uF312'         # 
typeset -g POWERLEVEL9K_LINUX_DEVUAN_ICON=$'\uF307'          # 
typeset -g POWERLEVEL9K_LINUX_ALPINE_ICON=$'\uF300'          # 
typeset -g POWERLEVEL9K_LINUX_AOSC_ICON=$'\uF301'            # 
typeset -g POWERLEVEL9K_LINUX_OPENSUSE_ICON=$'\uF314'        # 
typeset -g POWERLEVEL9K_LINUX_SABAYON_ICON=$'\uF317'         # 
typeset -g POWERLEVEL9K_LINUX_SLACKWARE_ICON=$'\uF319'       # 
typeset -g POWERLEVEL9K_LINUX_UBUNTU_ICON=$'\uF31B'          # 
typeset -g POWERLEVEL9K_LOAD_ICON=$'\uF524'                  #  or L           or $'\uF140 '  or '\uF080 ' 
typeset -g POWERLEVEL9K_LOCK_ICON=$'\uF023'                  #  or '\uE0A2' 
typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="↱"    #   or '\u256D'$'\U2500' ╭─
typeset -g POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="↳ "    #   or '\u251C'$'\U2500' ├─ or '\u2570'$'\U2500 '  ╰─
typeset -g POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_PREFIX='\u251C'$'\U2500' # ├─
typeset -g POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX='\u251C'$'\U2500'  # ├─
typeset -g POWERLEVEL9K_NETWORK_ICON=$'\uF012 '              #  or $'\uF1fe '  or '\uF1EB' 
typeset -g POWERLEVEL9K_NODE_ICON='\uE617 '                  #  or'\uE24F' ⬢
typeset -g POWERLEVEL9K_OK_ICON=$'\u2714'                    # ✔ or $'\uF00c ' 
typeset -g POWERLEVEL9K_PUBLIC_IP_ICON=$'\uF080 '            #  or $'\uF469'  or '\UF0AC' 
typeset -g POWERLEVEL9K_PYTHON_ICON=$'\uF81F'                #  or '\uE73C ' # 
typeset -g POWERLEVEL9K_RAM_ICON=$'\uF2db '                  #  or $'\uF0e4 ' 
typeset -g POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\uE0B2'    # 
typeset -g POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=$'\uE0B3' # 
typeset -g POWERLEVEL9K_ROOT_ICON="\uF0e7 Root"              #   or '\uF292'   or '\uE614 ' 
typeset -g POWERLEVEL9K_RUBY_ICON=$'\uF219 '                 #  or '\uE791'  or $'\uE739' 
typeset -g POWERLEVEL9K_RUST_ICON=$'\uE7a8'                  # 
typeset -g POWERLEVEL9K_SERVER_ICON=$'\uF233 '               #  or '\uF473'  or '\uF0AE ' 
typeset -g POWERLEVEL9K_SSH_ICON="(ssh)"                     #    or 'uf120'  or '\uE795'  or '\uF489'  # 
typeset -g POWERLEVEL9K_SUDO_ICON=$'\uF09C'                  # 
typeset -g POWERLEVEL9K_SUNOS_ICON=$'\uF185 '                # 
typeset -g POWERLEVEL9K_SWAP_ICON=$'\uF464'                  #  or '\uF0C7 '  or '\uF109 ' 
typeset -g POWERLEVEL9K_SWIFT_ICON=$'\uE755'                 # 
typeset -g POWERLEVEL9K_SYMFONY_ICON=$'\uE757'               # 
typeset -g POWERLEVEL9K_TEST_ICON=$'\uE29A '                 #  or '\uF188' 
typeset -g POWERLEVEL9K_TIME_ICON=$'\uF017 '                 # 
typeset -g POWERLEVEL9K_TODO_ICON=$'\uF046 '                 #  or '\uF133' 
typeset -g POWERLEVEL9K_VCS_BOOKMARK_ICON=$'\uF461 '         #  or '\uF02E'  or '\uF097'  or '\uF08D'  or $'\uF223'  or ☿
typeset -g POWERLEVEL9K_VCS_BRANCH_ICON=$'\uF126 '           #  or '\uE702'  or 
typeset -g POWERLEVEL9K_VCS_COMMIT_ICON='\uE729'             #  or "-o-" or '@'
typeset -g POWERLEVEL9K_VCS_GIT_BITBUCKET_ICON=$'\uF171 '    #  or '\uF172 '  or '\uE703' 
typeset -g POWERLEVEL9K_VCS_GIT_GITHUB_ICON=$'\uF113 '       #  or '\uF09B '  or '\uF092 ' 
typeset -g POWERLEVEL9K_VCS_GIT_GITLAB_ICON=$'\uF296 '       # 
typeset -g POWERLEVEL9K_VCS_GIT_ICON=$'\uF1D3 '              #  or '\uF1D2' 
typeset -g POWERLEVEL9K_VCS_HG_ICON=$'\uF223 '               #  or 
typeset -g POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=$'\uF063'  #  or '\uF01a'  or '\uF0AB'  or '\ud727'  or '\u21E3' ⇣ or '\u2193' ↓
typeset -g POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON=$'\uF062'  #  or '\uF01b'  or '\uF0AA'  or '\uE726'  or '\u21E1' ⇡ or '\u2191' ↑
typeset -g POWERLEVEL9K_VCS_REMOTE_BRANCH_ICON=$'\uF061 '    #  or '\uF18e'  or '\uF0A9'  or '\uE725'  or '\u21DD' ⇝ or '\u2192' → or '\uE728 ' 
typeset -g POWERLEVEL9K_VCS_STAGED_ICON=$'\uF067'            # ✚ or '\uF055'  or '\uF0FE' 
typeset -g POWERLEVEL9K_VCS_STASH_ICON=$'\uF01C'             #  or '\uF192'  or ⍟
typeset -g POWERLEVEL9K_VCS_SVN_ICON=$'\uE72D '              #  or'\uE268' 
typeset -g POWERLEVEL9K_VCS_TAG_ICON=$'\uF02c '              #  or '\uF02B ' 
typeset -g POWERLEVEL9K_VCS_UNSTAGED_ICON=$'\u25CF'          # ● or '\uF111'  or '\uF06A'  or '\uF12A'  or '\uF071' 
typeset -g POWERLEVEL9K_VCS_UNTRACKED_ICON=$'\uF128'         #  or '\uF059'  '\uF29C'  or '\u00B1' ?
typeset -g POWERLEVEL9K_VPN_ICON="(vpn)"
typeset -g POWERLEVEL9K_WINDOWS_ICON=$'\uF17a '              #  or '\uF17A' 

##-----Color Set
typeset -g POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND='226'          #yellow
typeset -g POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND='000'          #alpha
typeset -g POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='039'             #blue
typeset -g POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='000'             #alpha
typeset -g POWERLEVEL9K_DIR_HOME_BACKGROUND='039'                #blue
typeset -g POWERLEVEL9K_DIR_HOME_FOREGROUND='000'                #alpha
typeset -g POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='039'      #blue
typeset -g POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='000'      #alpha
typeset -g POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND='160'  #red
typeset -g POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND='226'  #yellow
typeset -g POWERLEVEL9K_VCS_CLEAN_FOREGROUND='000'               #alpha
typeset -g POWERLEVEL9K_VCS_CLEAN_BACKGROUND='040'               #green or'165' #purple
typeset -g POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='000'           #alpha
typeset -g POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='040'           #green
typeset -g POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='000'            #alpha
typeset -g POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='208'            #orange
typeset -g POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='040'          #green
typeset -g POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND='000'          #alpha
typeset -g POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND='208'          #orange
typeset -g POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND='000'          #alpha

typeset -g POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND='226'         #yellow
typeset -g POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND='000'         #alpha
typeset -g POWERLEVEL9K_STATUS_OK_BACKGROUND='000'               #alpha
typeset -g POWERLEVEL9K_STATUS_OK_FOREGROUND='040'               #green
typeset -g POWERLEVEL9K_STATUS_ERROR_BACKGROUND='160'            #red
typeset -g POWERLEVEL9K_STATUS_ERROR_FOREGROUND='226'            #yellow
typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='160'  #red
typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='226'  #yellow
typeset -g POWERLEVEL9K_HISTORY_BACKGROUND='244'                 #gray
typeset -g POWERLEVEL9K_HISTORY_FOREGROUND='000'                 #alpha
typeset -g POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND='160'           #red
typeset -g POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND='226'           #yellow
typeset -g POWERLEVEL9K_LOAD_WARNING_BACKGROUND='226'            #yellow
typeset -g POWERLEVEL9K_LOAD_WARNING_FOREGROUND='000'            #alpha
typeset -g POWERLEVEL9K_LOAD_NORMAL_BACKGROUND='042'             #green
typeset -g POWERLEVEL9K_LOAD_NORMAL_FOREGROUND='000'             #alpha
# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

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
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-syntax-highlighting
  tmux
  zsh-256color
)

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH=$PATH:$HOME/.rvm/bin


############### PATH ###################

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/zsh_completion" ] && \. "$NVM_DIR/zsh_completion"  # This loads nvm bash_completion

#Homebrew Python
export PATH=/usr/local/share/python:$PATH

# Miniconda
#export PATH="/Users/moses/miniconda3/bin:$PATH"

# My local Bin
export PATH=~/.bin:$PATH

# For a ipython notebook and pyspark integration
if which pyspark > /dev/null; then
  export SPARK_HOME="/usr/local/Cellar/apache-spark/2.4.0/libexec/"
  export PYTHONPATH=$SPARK_HOME/python:$SPARK_HOME/python/build:$PYTHONPATH
  export PYTHONPATH=$SPARK_HOME/python/lib/py4j-0.10.4-src.zip:$PYTHONPATH
fi

# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/Users/moses/Downloads/pyalgoviz-master/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/moses/Downloads/pyalgoviz-master/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
#if [ -f '/Users/moses/Downloads/pyalgoviz-master/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/moses/Downloads/pyalgoviz-master/google-cloud-sdk/completion.zsh.inc'; fi
#. /Users/moses/miniconda3/etc/profile.d/conda.sh
#export PATH=$PATH:$HOME/bin
#. /Users/moses/miniconda3/etc/profile.d/conda.sh
#conda activate

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/moses/.nvm/versions/node/v8.11.4/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/moses/.nvm/versions/node/v8.11.4/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/moses/.nvm/versions/node/v8.11.4/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/moses/.nvm/versions/node/v8.11.4/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
fpath=(/usr/local/share/zsh-completions /Users/moses/.oh-my-zsh/plugins/git /Users/moses/.oh-my-zsh/functions /Users/moses/.oh-my-zsh/completions /usr/local/share/zsh/site-functions /usr/share/zsh/site-functions /usr/share/zsh/5.3/functions)


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

### Added by Zplugin's installer
source '/Users/moses/.zplugin/bin/zplugin.zsh'
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk
export PATH="/usr/local/opt/openssl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"
