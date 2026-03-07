echo "  - rvdevreplace_name project"

alias pdrvdevreplace_prefixp="pushd RVDEVREPLACE_PROJECTDIR"
alias pdrvdevreplace_prefixr="pushd RVDEVREPLACE_PROJECTDIR/repos/rvdev"
alias pdrvdevreplace_prefixwn="pushd RVDEVREPLACE_PROJECTDIR/docs/work-notes/in-progress"

alias rvdevreplace_prefix-source-workspace="source RVDEVREPLACE_PROJECTDIR/setup/zsh-setup-workspace-rvdevreplace_prefix.zsh"

current_directory="`pwd`"
workspace_directories=( \
    "RVDEVREPLACE_PROJECTDIR/repos/rvdev" \
    "RVDEVREPLACE_PROJECTDIR/repos/rvdev2" \
)

if [[ " $current_directory " ~= " ${workspace_directories[@]} " ]]; then
    source "RVDEVREPLACE_PROJECTDIR/setup/zsh-setup-workspace-rvdevreplace_prefix.zsh"
fi
