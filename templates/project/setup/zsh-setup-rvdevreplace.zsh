echo "  - RVDEVREPLACE project"

export RV_RVDEVREPLACE_PROJECT_DIR="/Users/reid.villeneuve/projects/rvdevreplace"

alias scrarvreplacedev="nvim $RV_RVDEVREPLACE_PROJECT_DIR/docs/scratchpad-rvdevreplace.md"
alias pdrvdevreplacep="pushd $RV_RVDEVREPLACE_PROJECT_DIR"
alias pdrvdevreplacer="pushd $RV_RVDEVREPLACE_PROJECT_DIR/repos/rvdevreplace"
alias pdrvdevreplacewn="pushd $RV_RVDEVREPLACE_PROJECT_DIR/docs/work-notes/in-progress"

if [[ `pwd` == "$RV_RVDEVREPLACE_PROJECT_DIR/repos/rvdevreplace" ]]; then
    source "$RV_RVDEVREPLACE_PROJECT_DIR/setup/zsh-setup-workspace-rvdevreplace.zsh"
fi
