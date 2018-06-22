# $HOME/.zshrc

# load all files from .shell/zshrc.d directory
if [ -d $HOME/.shellrc/zshrc.d ]; then
    for file in $HOME/.shellrc/zshrc.d/*.zsh; do
        source "${file}"
    done
fi

# load all files from .shell/rc.d directory
if [ -d $HOME/.shellrc/rc.d ]; then
    for file in  $HOME/.shellrc/rc.d/*.sh; do
        source "${file}"
    done
fi

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
