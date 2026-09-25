echo "    - RVDEVREPLACE_Name project workspace"

# System

export PATH="RVDEVREPLACE_projectdir/scripts/:${(q)PATH}"

alias scrap="nvim RVDEVREPLACE_projectdir/docs/scratchpad.md"
alias pdp="pushd RVDEVREPLACE_projectdir"
alias pdr="pushd RVDEVREPLACE_projectdir/repos/rvdev"
alias pdst="pushd RVDEVREPLACE_projectdir/stories/in-progress"

alias sgv="source RVDEVREPLACE_projectdir/variables/git-variables.sh"

# Git

sgv

alias gscur="git switch \"${(q)RVDEVREPLACE_prefix_git_current}\""
alias gspr="git switch \"${(q)RVDEVREPLACE_prefix_git_pr}\""
alias gsbase="git switch \"${(q)RVDEVREPLACE_prefix_git_base}\""
alias gsmain="git switch main"

# Repos

await-repo() {
    current_directory="`pwd -P`"

    [[ "RVDEVREPLACE_projectdir/repos/rvdev" == "$current_directory" ]] \
        && source 'RVDEVREPLACE_projectdir/config/zsh-rvdev-config.zsh'
}
await-repo

# Repos setup

autoload -U add-zsh-hook
root_directories=( \
    "RVDEVREPLACE_projectdir" \
    "RVDEVREPLACE_projectdir/repos" \
)

if [[ " ${root_directories[@]} " =~ " `pwd -P` " ]]; then
    add-zsh-hook chpwd await-repo
fi
