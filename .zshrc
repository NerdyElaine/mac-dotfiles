# Path to your oh-my-zsh installation.
export ZSH="/Users/elaine/.oh-my-zsh"

ZSH_THEME=""

zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# zsh-vi-mode last-working-dir 
plugins=(fast-syntax-highlighting zoxide) 

ZSH_AUTOSUGGEST_STRATEGY=(completion history)

ZSH_CACHE_DIR="$ZSH/cache"
ZSH_COMPDUMP="$ZSH_CACHE_DIR/.zcompdump"

# Additional zsh completions (https://github.com/zsh-users/zsh-completions required)
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
eval "$(starship init zsh)"

##
## User configuration
##

# Path
path+=( ~/.emacs.d/bin ~/bin ~/.local/bin ~/.spicetify )
# PATH="/usr/local/opt/llvm/bin:/usr/local/opt/qt@5/bin:$PATH"
PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH

# Env variables
export LESSHISTFILE='-'             # Don't create .lesshst
export EDITOR='nvim'                # Set default editor
export HOMEBREW_NO_ENV_HINTS=1      # Don't show homebrew's hints
export ASAN_OPTIONS=detect_leaks=1  # Enable LeakSanitizer on macOS
# export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/qt@5/lib/pkgconfig"

#
# Aliases
#

# General aliases
alias v='nvim'                  # Neovim shortcut
alias inv='nvim $(fzf -m --preview="bat --color=always {}")' # Find files with fzf with preview with bat and opens with Neovim
alias o='open'                  # macOS open shortcut
alias owd='open ./'             # Open current dir in Finder (macOS)
alias fm='. ranger'             # Ranger shortcut (switches dir when leaving ranger)
alias rf='rifle'                # Rifle, the ranger file opener shortcut
alias fhistory='history | rg'   # Searches history
alias info='info --vi-keys'     # Enables vi keybindigs in info
alias vc='v *.c'                # Opens all C files in cwd
alias vch='v *.h *.c'           # Opens all C and header files in cwd
alias pdb='python3 -m pdb'      # Python debugger shortcut
alias py='python3'              # Python
alias dis3d='/Users/elaine/.cargo/bin/display3d' #Blahaj
source "$HOME/.private.zsh"

# Git aliases
alias gl='git log --graph --abbrev-commit --decorate --date=relative --all'
alias glo='git log --oneline --graph --abbrev-commit --decorate --date=relative --all'
alias gst='git status --short --find-renames --branch'
alias gstu='git status --short --find-renames --branch --untracked-files'
alias ga='git add'
alias gaa='git add -A'
alias gcm='git commit -m'
alias gcam='git commit -am'
alias gd='git diff'

# Eza aliases
alias ls='eza --icons --group-directories-first'
alias la='eza -a --icons --group-directories-first'
alias lsa='eza -a --icons --group-directories-first'
alias ll='eza -lah --icons --group-directories-first'
alias l='eza -lh --icons --group-directories-first'
alias tree='eza -T --icons -D --group-directories-first'
alias treeall='eza --tree --icons --group-directories-first'

# Brew aliases
alias bupd='brew update'
alias bupg='brew upgrade'
alias binfo='brew info'
alias bsync='brew update && brew upgrade'
alias brm='brew rm'
alias bout='brew outdated'
alias binst='brew install'
alias bsstop='brew services stop'
alias bsstart='brew services start'
alias bsrestart='brew services restart'
alias bsrch='brew search'

# yabai shortcuts
alias yrestart='yabai --restart-service'
alias ystop='yabai --stop-service'
alias ystart='yabai --start-service'

#fastfetch alias
alias ff='hyfetch -b fastfetch'

#
# Set fzf theme
#

# Catppuccin mocha
# export FZF_DEFAULT_OPTS='--color=bg+:#302D41,bg:#1E1E2E,spinner:#F8BD96,hl:#F28FAD --color=fg:#D9E0EE,header:#F28FAD,info:#DDB6F2,pointer:#F8BD96 --color=marker:#F8BD96,fg+:#F2CDCD,prompt:#DDB6F2,hl+:#F28FAD'

# Catppuccin frappe
#export FZF_DEFAULT_OPTS=" \
#--color=bg+:#414559,bg:#303446,spinner:#f2d5cf,hl:#e78284 \
#--color=fg:#c6d0f5,header:#e78284,info:#ca9ee6,pointer:#f2d5cf \
#--color=marker:#f2d5cf,fg+:#c6d0f5,prompt:#ca9ee6,hl+:#e78284"

#Catppuccin Macchiato
export FZF_DEFAULT_OPTS=" \
--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#b7bdf8,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796 \
--color=selected-bg:#494d64 \
--multi"

# # Onedark
# export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS"\
# " --color=bg+:#353b45,bg:#282c34,spinner:#56b6c2,hl:#61afef"\
# " --color=fg:#565c64,header:#61afef,info:#e5c07b,pointer:#56b6c2"\
# " --color=marker:#56b6c2,fg+:#b6bdca,prompt:#e5c07b,hl+:#61afef"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

clear
pokemon-colorscripts -r
