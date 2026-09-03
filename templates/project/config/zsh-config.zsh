echo "  - RVDEVREPLACE_Name project"

alias pdRVDEVREPLACE_prefixp="pushd RVDEVREPLACE_projectdir"
alias pdRVDEVREPLACE_prefixr="pushd RVDEVREPLACE_projectdir/repos/rvdev"
alias pdRVDEVREPLACE_prefixst="pushd RVDEVREPLACE_projectdir/stories/in-progress"

alias RVDEVREPLACE_prefix-source-workspace="source RVDEVREPLACE_projectdir/config/zsh-config-workspace.zsh"

current_directory="`pwd -P`"
workspace_directories=( \
    "RVDEVREPLACE_projectdir/repos/rvdev" \
    "RVDEVREPLACE_projectdir/repos/rvdev2" \
)

if [[ " ${workspace_directories[@]} " =~ " $current_directory " ]]; then
    RVDEVREPLACE_prefix-source-workspace
fi
