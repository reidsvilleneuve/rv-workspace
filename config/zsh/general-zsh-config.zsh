echo "  - General zsh"

################
#    System    #
################

# -- Vim Integration --

export EDITOR=nvim
bindkey -v

# -- (TODO) Git zsh completion --

# zstyle ':completion:*:*:git:*' script ~/.zsh/utils/git-completion.bash
# fpath=(~/.zsh/functions $fpath)
# autoload -U compinit && compinit

# -- Misc --

set -o ignoreeof # Stops exiting upon ctrl-d
export KEYTIMEOUT=2 # Very short post-<Esc> timeout
# Share history between panes. TODO: Reserach what `-o` flag does (I've used it
#   for this before and don't recall why):
setopt share_history

#################
#    Visuals    #
#################

# -- Prompt --

local rv_git_current_branch_or_blank() {
    echo `git branch --show-current 2> /dev/null || echo "(No git repo)"`
}
setopt PROMPT_SUBST # Allow substitutions in prompt
PROMPT=$'---> %? (%T)\n\n\n%80<..<%~%<< - $(rv_git_current_branch_or_blank)\n🐉 > '

###################
#    Shortcuts    #
###################

# -- Git --

alias ga="git add"
alias gb="git branch"
alias gbsb="git bisect bad"
alias gbsg="git bisect good"
alias gbsr="git bisect reset"
alias gc="git commit"
alias gca="git commit -va"
alias gcp="git cherry-pick"
alias gcpc="git cherry-pick --continue"
alias gd="git diff"
alias gdca="git diff --cached"
alias gdt="git difftool"
alias gl="git pull"
alias glg="git log --stat --date=iso"
alias glo="git log --oneline"
alias glog="git log --oneline --graph"
alias gloga="git log --oneline --graph --all"
alias gm="git merge"
alias gmt="git mergetool"
alias gp="git push"
alias grb="git rebase"
alias grbi="git rebase --interactive"
alias grbc="git rebase --continue"
alias gs="git show"
alias gst="git status"
alias gstp="git status --porcelain"
alias gstpf="git status --porcelain  | awk '{ print \$2 }'"
alias gsw="git switch"
alias glsf="git ls-files"
# RVDEV: Move this logic to a script, make `gf` call script, append pbcopy etc. for `gfc`
alias gf="git ls-files | awk '!/^\.yarn/' | fzy"
alias gfc="git ls-files | awk '!/^\.yarn/' | fzy | tr -d '\n' | pbcopy && pbpaste && echo"
# I don't currently use fzf:
# alias gitfzf="git ls-files | fzf"
# alias gfcz="git ls-files | fzf | pbcopy"
alias gbl="git blame"

# Possibly-damaging commands are prefixed with "UNSAFE_" to decrease chance of accidental execution:
alias UNSAFE_gpfwl="git push --force-with-lease"
alias UNSAFE_grs="git restore"

gbcur() { git branch --show-current; }
gpsu() { git push --set-upstream origin `git branch --show-current`; }

# -- Tmux --

alias ta='tmux attach -t'
alias ts='tmux new-session -s'
alias tsd='tmux new-session -d -s'
alias tl='tmux list-sessions'
alias tkss='tmux kill-session -t'
alias tnw='tmux new-window'

# -- Misc --

alias l="ls -la"
alias v="nvim"
alias jspp="python -mjson.tool"
alias scra="nvim ~/projects/self/docs/scratchpad.md"
alias pd="pushd"
