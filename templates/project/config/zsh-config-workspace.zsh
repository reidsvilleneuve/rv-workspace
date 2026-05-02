echo "    - RVDEVREPLACE_Name project workspace"

# System

export PATH="RVDEVREPLACE_projectdir/scripts/:${(q)PATH}"

alias scrap="nvim RVDEVREPLACE_projectdir/docs/scratchpad.md"
alias pdp="pushd RVDEVREPLACE_projectdir"
alias pdr="pushd RVDEVREPLACE_projectdir/repos/rvdev"
alias pdwn="pushd RVDEVREPLACE_projectdir/docs/work-notes/in-progress"

alias sgv="source RVDEVREPLACE_projectdir/variables/git-variables.sh"

# Git

sgv

alias gscur="git switch \"${(q)RVDEVREPLACE_prefix_git_current}\""
alias gspr="git switch \"${(q)RVDEVREPLACE_prefix_git_pr}\""
alias gsbase="git switch \"${(q)RVDEVREPLACE_prefix_git_base}\""
alias gsmain="git switch main"
