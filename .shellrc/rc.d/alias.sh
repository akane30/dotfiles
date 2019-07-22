alias gdc="git diff --cached"

function pcd() {
    CDPATH="${HOME}/projects" cd "${1}"
}

function npmdo() {
    (PATH=$(npm bin):$PATH; eval $@)
}

alias npmc="npm run compile"
alias yarnc="yarn run compile"

alias eim="emacsclient -n"

alias eimh="emacsclient -nc"

function dfconfig {
    `which git` --git-dir="${HOME}/.cfg/" --work-tree="${HOME}" $@
}
