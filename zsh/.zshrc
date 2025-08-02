# Environment Variables
export EDITOR=nvim

# Aliases
# improved ls, if it exists
{ which lsd &> /dev/null } && alias ls=lsd

# Autoload
autoload -U colors && colors

# Autocomplete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

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
{ which fastfetch &> /dev/null } && fastfetch
{ which figlet &> /dev/null } && print -P "%F{magenta}$(figlet $USERNAME)%f"

# Syntax Highlighting and Autosuggestions
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh \
    &> /dev/null
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh &> /dev/null

# First command shows as passed
true
