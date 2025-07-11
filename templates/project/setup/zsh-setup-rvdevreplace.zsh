echo "  - RVDEVREPLACE project"

export RV_RVDEVREPLACE_PROJECT_DIR="/Users/reid.villeneuve/projects/rvdevreplace"

alias pdrvdevreplacep="pushd $RV_RVDEVREPLACE_PROJECT_DIR"
alias pdrvdevreplacer="pushd $RV_RVDEVREPLACE_PROJECT_DIR/repos/rvdevreplace"
alias pdrvdevreplacewn="pushd $RV_RVDEVREPLACE_PROJECT_DIR/docs/work-notes/in-progress"

alias rvdevreplace-source-workspace="source $RV_RVDEVREPLACE_PROJECT_DIR/setup/zsh-setup-workspace-rvdevreplace.zsh"

current_directory="`pwd`"
workspace_directories=( \
    "$RV_RVDEVREPLACE_PROJECT_DIR/repos/rvdevreplace" \
)

if [[ "$current_directory" == $workspace_directories ]]; then

if [[ "`pwd`" == "$RV_RVDEVREPLACE_PROJECT_DIR/repos/rvdevreplace" ]]; then
    source "$RV_RVDEVREPLACE_PROJECT_DIR/setup/zsh-setup-workspace-rvdevreplace.zsh"
fi
