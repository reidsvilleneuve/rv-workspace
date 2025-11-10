echo "  - RVDEVREPLACE project"

export RV_RVDEVREPLACE_PROJECT_DIR="/Users/reid.villeneuve/projects/rvdevreplace"

rvdevreplace_workspace_dirs=( \
  "$RV_RVDEVREPLACE_PROJECT_DIR/repos/rvdev" \
)

alias scrarvreplacedev="nvim $RV_RVDEVREPLACE_PROJECT_DIR/docs/scratchpad-rvdevreplace.md"
alias pdrvdevreplacep="pushd $RV_RVDEVREPLACE_PROJECT_DIR"
alias pdrvdevreplacer="pushd $RV_RVDEVREPLACE_PROJECT_DIR/repos/rvdevreplace"
alias pdrvdevreplacewn="pushd $RV_RVDEVREPLACE_PROJECT_DIR/docs/work-notes/in-progress"

current_directory="`pwd`"

if [[ " $rvdevreplace_workspace_dirs[@] " =~ " $current_directory "]]; then
    source "$RV_RVDEVREPLACE_PROJECT_DIR/setup/zsh-setup-workspace-rvdevreplace.zsh"
fi
