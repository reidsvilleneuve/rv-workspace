echo "    - RVDEVREPLACE project workspace"

# System

export PATH="$RV_RVDEVREPLACE_PROJECT_DIR/scripts/:$PATH"

alias scrap="nvim $RV_RVDEVREPLACE_PROJECT_DIR/docs/scratchpad-rvdevreplace.md"
alias pdp="pushd $RV_RVDEVREPLACE_PROJECT_DIR"
alias pdr="pushd $RV_RVDEVREPLACE_PROJECT_DIR/repos/rvdevreplace"
alias pdwn="pushd $RV_RVDEVREPLACE_PROJECT_DIR/docs/work-notes/in-progress"

# Git

export RV_RVDEVREPLACE_GIT_CURRENT="UNSET"
export RV_RVDEVREPLACE_GIT_PR="UNSET"
export RV_RVDEVREPLACE_GIT_BASE="main"

alias gscur="git switch $RV_RVDEVREPLACE_GIT_CURRENT"
alias gspr="git switch $RV_RVDEVREPLACE_GIT_PR"
alias gsbase="git switch $RV_RVDEVREPLACE_GIT_BASE"
alias gsmain="git switch main"
