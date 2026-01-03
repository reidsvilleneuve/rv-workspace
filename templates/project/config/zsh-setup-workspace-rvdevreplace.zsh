echo "    - RVDEVREPLACE_NAME project workspace"

# System

export PATH="RVDEVREPLACE_PROJECTDIR/scripts/:${(q)PATH}"

alias scrap="nvim RVDEVREPLACE_PROJECTDIR/docs/scratchpad-rvdevreplace.md"
alias pdp="pushd RVDEVREPLACE_PROJECTDIR"
alias pdr="pushd RVDEVREPLACE_PROJECTDIR/repos/rvdevreplace"
alias pdwn="pushd RVDEVREPLACE_PROJECTDIR/docs/work-notes/in-progress"

# Git

export RVDEVREPLACE_PREFIX_GIT_CURRENT="UNSET"
export RVDEVREPLACE_PREFIX_GIT_PR="UNSET"
export RVDEVREPLACE_PREFIX_GIT_BASE="main"

alias gscur="git switch \"${(q)RVDEVREPLACE_PREFIX_GIT_CURRENT}\""
alias gspr="git switch \"${(q)RVDEVREPLACE_PREFIX_GIT_PR}\""
alias gsbase="git switch \"${(q)RVDEVREPLACE_PREFIX_GIT_BASE}\""
alias gsmain="git switch main"
