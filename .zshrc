export PS1="%n:%~ > "
export CLICOLOR=1
alias ls='ls -G'

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export REACT_EDITOR=code
# alias code='code-insiders'
alias k='kubectl'

#export RCT_METRO_PORT=8082
export JAVA_HOME=/Applications/Android\ Studio.app/Contents/jre/Contents/Home
export ANDROID_SDK_ROOT=/Users/drey/Library/Android/sdk
export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

export PATH="/usr/local/opt/node@12/bin:/Users/drey/Library/Python/2.7/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/node@12/lib"
export CPPFLAGS="-I/usr/local/opt/node@12/include"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export KUBECONFIG=/Users/drey/.kubeconfig

bindkey "\e\e[D" backward-word
bindkey "\e\e[C" forward-word
export PATH="/usr/local/opt/php@7.4/bin:$PATH"
export PATH="/usr/local/opt/php@7.4/sbin:$PATH"
