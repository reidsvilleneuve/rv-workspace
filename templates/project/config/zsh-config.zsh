echo "  - RVDEVREPLACE_Name project"

alias pdRVDEVREPLACE_prefixp="pushd RVDEVREPLACE_projectdir"
alias pdRVDEVREPLACE_prefixr="pushd RVDEVREPLACE_projectdir/repos/rvdev"
alias pdRVDEVREPLACE_prefixwn="pushd RVDEVREPLACE_projectdir/docs/work-notes/in-progress"

alias RVDEVREPLACE_prefix-source-workspace="source RVDEVREPLACE_projectdir/config/zsh-config-workspace.zsh"

current_directory="`pwd`"
workspace_directories=( \
    "RVDEVREPLACE_projectdir/repos/rvdev" \
    "RVDEVREPLACE_projectdir/repos/rvdev2" \
)

if [[ " $current_directory " ~= " ${workspace_directories[@]} " ]]; then
    source "RVDEVREPLACE_projectdir/config/zsh-config-workspace.zsh"
fi
