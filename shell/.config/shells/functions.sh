#!/bin/bash

# Find command
# Pressing `ESC` aborts, printing the modified or incomplete command
fcmd() {
  printf '%s\n' "$(fc -rnl 1 | fzf -q "$1" \
    --prompt 'ESC to keep modified cmd> ' \
    --bind 'esc:print-query+abort')"
}

# Find environment variable
fev() {
  printenv | fzf -q "$1"
}

# Find in file with fzf, rg and bat
fif() {
  RG_PREFIX="rg --column --line-number --no-heading --color=always --hidden --glob='!.git' --smart-case"
  INITIAL_QUERY="${*:-}"
  : | fzf --ansi --disabled --query "$INITIAL_QUERY" \
    --prompt 'Find in file (ctrl-y to clipboard) > ' \
    --bind "start:reload:$RG_PREFIX {q}" \
    --bind "change:reload:sleep 0.1; $RG_PREFIX {q} || true" \
    --delimiter : \
    --preview 'bat --color=always {1} --highlight-line {2}' \
    --preview-window 'right,60%,border-bottom,+{2}+3/3,~3' \
    --bind 'ctrl-y:execute-silent(echo {} | xclip -selection clipboard)+abort,enter:become(nvim {1} +{2})'
}

# Find file with fd, fzf and open in nvim
ffile() {
  FD_PREFIX="fd --hidden --no-ignore --ignore-case --type file"
  INITIAL_QUERY="${*:-}"
  : | fzf --ansi --disabled --query "$INITIAL_QUERY" \
    --prompt 'Files (ctrl-y to clipboard) > ' \
    --bind "start:reload:$FD_PREFIX {q}" \
    --bind "change:reload:sleep 0.1; $FD_PREFIX {q} || true" \
    --delimiter : \
    --preview 'bat --color=always {}' \
    --bind 'ctrl-y:execute-silent(echo {} | xclip -selection clipboard)+abort,enter:become(nvim {1})'
}

# Find directory and move to it or copy to clipboard
fdir() {
  FD_PREFIX="fd --hidden --no-ignore --ignore-case --type directory"
  INITIAL_QUERY="${*:-}"
  DIR="$(: | fzf --ansi --disabled --query "$INITIAL_QUERY" \
    --prompt 'Directory (ctrl-y to clipboard) > ' \
    --bind "start:reload:$FD_PREFIX {q}" \
    --bind "change:reload:sleep 0.1; $FD_PREFIX {q} || true" \
    --delimiter : \
    --preview 'tree -C {}' \
    --bind 'ctrl-y:execute-silent(echo {} | xclip -selection clipboard)+abort')"
  cd "$DIR" || exit
}

# Find by extension with fd, fzf and open in nvim
fde() {
  FD_PREFIX="fd --hidden --no-ignore --ignore-case --extension"
  INITIAL_QUERY="${*:-}"
  : | fzf --ansi --disabled --query "$INITIAL_QUERY" \
    --prompt 'Extension (ctrl-y to clipboard) > ' \
    --bind "start:reload:$FD_PREFIX {q}" \
    --bind "change:reload:sleep 0.1; $FD_PREFIX {q} || true" \
    --delimiter : \
    --preview 'bat --color=always {}' \
    --bind 'ctrl-y:execute-silent(echo {} | xclip -selection clipboard)+abort,enter:become(nvim {1})'
}

# Find directory and open it with IDE
fide() {
  FD_PREFIX="zoxide query -l"
  INITIAL_QUERY="${*:-}"
  : | fzf --ansi --disabled --query "$INITIAL_QUERY" \
    --prompt 'enter idea, ctrl-n nvim, ctrl-y pycharm> ' \
    --bind "start:reload:$FD_PREFIX {q}" \
    --bind "change:reload:sleep 0.1; $FD_PREFIX {q} || true" \
    --delimiter : \
    --preview 'tree -C {}' \
    --bind 'enter:become(nvim {1})' \
    --bind 'ctrl-n:become(pycharm {1})' \
    --bind 'ctrl-y:become(idea {1})'
}
