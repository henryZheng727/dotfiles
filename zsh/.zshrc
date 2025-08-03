# Environment Variables
# XDG base dir specification
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
# default programs
export EDITOR=nvim

# History
HISTFILE=$XDG_CACHE_HOME/zsh/history
HISTSIZE=100000
SAVEHIST=100000
setopt HIST_IGNORE_SPACE # ignore commands starting w/ space
setopt HIST_IGNORE_DUPS # ignore duplicate commands
setopt SHARE_HISTORY # share history. i don't use tmux, so maybe unnecessary

# Aliases
# improved ls, if it exists
( which lsd &> /dev/null ) && alias ls=lsd
# vim exit lmao
alias :q=exit
alias :wq=exit
alias q=exit
alias wq=exit
# quickly enter classes
CLASSES=(cs3700 cs4000 cs4400 cs6160 cs6520 math5600)
SEMESTER=fa26
for CLASS in $CLASSES;
do
    CLASSPATH="${HOME}/university/${SEMESTER}/${CLASS}";
    test -d "${CLASSPATH}" && alias $CLASS="cd ${CLASSPATH}"
done;

# Autoload
autoload -U colors && colors

# Autocomplete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
_comp_options+=(globdots)
compinit

# Prompt
PROMPT_DATE='[ %F{magenta}%@ %W%f ]'
PROMPT_CURRENT_DIR='%S%F{cyan}%U%B CURRENT DIRECTORY: %~ %b%u%f%s'
PROMPT_LAST_RESULT='%(?.%F{magenta}PREV CMD PASSED%f.%F{red}PREV CMD FAILED%f)'
PROMPT_TEXT='%F{magenta}%B%(!.## .>> )%b%f'
export PROMPT="
 ${PROMPT_CURRENT_DIR} ${PROMPT_DATE} ${PROMPT_LAST_RESULT}
 ${PROMPT_TEXT}"

# Built in Options
setopt CORRECT
bindkey -v

# Aura farming
( which fastfetch &> /dev/null ) && fastfetch
( which figlet &> /dev/null ) && print -P "%F{magenta}$(figlet $USERNAME)%f"

# Syntax Highlighting and Autosuggestions
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh \
    &> /dev/null
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh &> /dev/null

# First command shows as passed
true
