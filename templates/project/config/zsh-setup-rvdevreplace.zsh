echo "  - rvdevreplace_name project"

alias pdrvdevreplacep="pushd RVDEVREPLACE_PROJECTDIR"
alias pdrvdevreplacer="pushd RVDEVREPLACE_PROJECTDIR/repos/rvdevreplace"
alias pdrvdevreplacewn="pushd RVDEVREPLACE_PROJECTDIR/docs/work-notes/in-progress"

alias rvdevreplace-source-workspace="source RVDEVREPLACE_PROJECTDIR/setup/zsh-setup-workspace-rvdevreplace.zsh"

current_directory="`pwd`"
workspace_directories=( \
    "RVDEVREPLACE_PROJECTDIR/repos/rvdevreplace" \
)

if [[ " $current_directory " ~= $workspace_directories ]]; then

if [[ "`pwd`" == "RVDEVREPLACE_PROJECTDIR/repos/rvdevreplace" ]]; then
    source "RVDEVREPLACE_PROJECTDIR/setup/zsh-setup-workspace-rvdevreplace.zsh"
fi
