echo "    - RVDEV project workspace"

# System

export PATH="$RV_RVDEV_PROJECT_DIR/scripts/:$PATH"

alias scrap="nvim $RV_RVDEV_PROJECT_DIR/docs/scratchpad-rvdev.md"
alias pdp="pushd $RV_RVDEV_PROJECT_DIR"
alias pdr="pushd $RV_RVDEV_PROJECT_DIR/repos/rvdev"
alias pdwn="pushd $RV_RVDEV_PROJECT_DIR/docs/work-notes/in-progress"

# Git

export RV_RVDEV_GIT_CURRENT="UNSET"
export RV_RVDEV_GIT_PR="UNSET"
export RV_RVDEV_GIT_BASE="main"

alias gscur="git switch $RV_RVDEV_GIT_CURRENT"
alias gspr="git switch $RV_RVDEV_GIT_PR"
alias gsbase="git switch $RV_RVDEV_GIT_BASE"
alias gsmain="git switch main"
