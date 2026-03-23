echo "    - RVDEVREPLACE_NAME project workspace"

# System

export PATH="RVDEVREPLACE_PROJECTDIR/scripts/:${(q)PATH}"

alias scrap="nvim RVDEVREPLACE_PROJECTDIR/docs/scratchpad-rvdevreplace_prefix.md"
alias pdp="pushd RVDEVREPLACE_PROJECTDIR"
alias pdr="pushd RVDEVREPLACE_PROJECTDIR/repos/rvdevreplace_prefix"
alias pdwn="pushd RVDEVREPLACE_PROJECTDIR/docs/work-notes/in-progress"

# Git

source ../variables/rvdevreplace_prefix-git-variables.sh

alias gscur="git switch \"${(q)rvdevreplace_prefix_git_current}\""
alias gspr="git switch \"${(q)rvdevreplace_prefix_git_pr}\""
alias gsbase="git switch \"${(q)rvdevreplace_prefix_git_base}\""
alias gsmain="git switch main"
