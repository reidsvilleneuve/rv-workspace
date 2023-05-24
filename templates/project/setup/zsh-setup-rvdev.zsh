echo "  - RVDEV project"

export RV_RVDEV_PROJECT_DIR="/Users/reid.villeneuve/projects/rvdev"

alias scrarvdev="nvim $RV_RVDEV_PROJECT_DIR/docs/scratchpad-rvdev.md"
alias pdrvdevp="pushd $RV_RVDEV_PROJECT_DIR"
alias pdrvdevr="pushd $RV_RVDEV_PROJECT_DIR/repos/rvdev"
alias pdrvdevwn="pushd $RV_RVDEV_PROJECT_DIR/docs/work-notes/in-progress"

if [[ `pwd` == "$RV_RVDEV_PROJECT_DIR/repos/rvdev" ]]; then
    source "$RV_RVDEV_PROJECT_DIR/setup/zsh-setup-workspace-rvdev.zsh"
fi
