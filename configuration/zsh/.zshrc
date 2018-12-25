#========= Oh My ZSH config =========

ZSH=$HOME/.dotfiles/repos/oh-my-zsh
ZSH_THEME="orien"
DEFAULT_USER="orien"
DISABLE_AUTO_UPDATE="true"
DISABLE_CORRECTION="true"

plugins=(aws bundler brew colored-man-pages docker docker-compose golang emacs emoji gem git rbenv nodenv vscode zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

#========= some more jazz =========

# Base16 Shell
BASE16_SHELL="$HOME/.dotfiles/repos/base16-shell"
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
base16_railscasts

export LESSOPEN="|`brew --prefix`/bin/lesspipe.sh %s" # Enable the lesspipe http://www-zeuthen.desy.de/~friebel/unix/lesspipe.html
export JAVA_HOME=`/usr/libexec/java_home`

export PATH="$(brew --prefix mysql@5.6)/bin:$PATH"

alias lilypond='/Applications/LilyPond.app/Contents/Resources/bin/lilypond'
alias lilypond-book='/Applications/LilyPond.app/Contents/Resources/bin/lilypond-book'
alias convert-ly='/Applications/LilyPond.app/Contents/Resources/bin/convert-ly'

export VISUAL='nvim'

#export EDITOR='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient'
alias emacs='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient --no-wait'
alias e='emacs'

export FZF_DEFAULT_COMMAND='rg --files'