eval "$(pyenv init -)"

# pyenv: enable CLI, shims and autocompletion, virtualenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH:/Users/harbolkn/chromedriver"
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

export CLICOLOR=1
export LSCOLORS=GxcxexDxFxhxhxhxhxcxcx
export TERM=xterm-256color

export PYTHONPATH="$PYTHONPATH:$HOME/.python"
export SANDBOX="/Users/kris/chartbeat/kris/notebooks/"
alias sandbox='cd $SANDBOX'

# Aliases
alias server="python -m SimpleHTTPServer 8080"
alias rm='rm -i'
alias sublime='/Applications/Sublime\ Text\.app/Contents/SharedSupport/bin/subl'
alias notebook="jupyter notebook"
alias quitjupyter="kill -k $(pgrep jupyter)"
alias nagios_password="cd ~/chartbeat/gatorfly/test; git grep 'dr'"
alias dynamo="java -jar /Users/harbolkn/dynamodb_local_latest/DynamoDBLocal.jar --sharedDb"
alias weather="curl -m 1 -s \"wttr.in/?lang=en\" | head -17"
alias crux_site="ssh -i /Users/kris/key.pem ec2-user@ec2-52-14-175-55.us-east-2.compute.amazonaws.com"
alias crux_sandbox="echo testtest";
alias crux="cd ~/git/personal/climb-crux";


HISTFILESIZE=10000000
