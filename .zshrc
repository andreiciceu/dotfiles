# Shell config
export PS1="%n:%~ > "
export CLICOLOR=1
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

bindkey "\e\e[D" backward-word
bindkey "\e\e[C" forward-word

# Load oh-my-zsh
if [ -f ~/.zshrc.oh-my ]; then
  source ~/.zshrc.oh-my
fi

# Load Secrets
if [ -f ~/.secrets.env ]; then
  export $(cat ~/.secrets.env | xargs)
fi
export KUBECONFIG=/Users/drey/.kubeconfig

# Utils
alias k='kubectl'
alias pdf2word='ocrmypdf --language eng "$1" - | pandoc -f pdf - -o "${1%.pdf}.docx"'
alias ls='ls -G'

## Tools
export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
export PATH="/opt/homebrew/lib/ruby/gems/3.4.0/bin:$PATH"

# JAVA
export JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CLASSPATH="~/java-libs/jssc/jssc.jar:$CLASSPATH"
# Android
export ANDROID_SDK_ROOT=/Users/drey/Library/Android/sdk
export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator

# PHP
export PATH="/opt/homebrew/opt/php@7.4/bin:$PATH"
export PATH="/opt/homebrew/opt/php@7.4/sbin:$PATH"

# Node
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export REACT_EDITOR=code

# pnpm
export PNPM_HOME="/Users/drey/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
