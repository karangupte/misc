# Set Android SDK location
export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"

# Set up Python REPL autocomplete
export PYTHONSTARTUP=~/.pythonrc

# Git Bash completion support
# brew install bash-completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Define bash colors
BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
LIME_YELLOW=$(tput setaf 190)
POWDER_BLUE=$(tput setaf 153)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BRIGHT=$(tput bold)
BLINK=$(tput blink)
REVERSE=$(tput smso)
UNDERLINE=$(tput smul)
ORANGE=$(tput setaf 208)
BRIGHT_RED=$(tput setaf 196)
NORMAL=$(tput sgr0)

# export PS1='[\w$(__git_ps1)]\$ '
export PS1='\[$BRIGHT_RED\][\[$NORMAL\]\[$POWDER_BLUE\]\w\[$NORMAL\]\[$LIME_YELLOW\]$(__git_ps1)\[$NORMAL\]\[$BRIGHT_RED\]]\$\[$NORMAL\] '

export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
export HADOOP_HOME=/usr/local/Cellar/hadoop/3.1.1/libexec
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME
export YARN_HOME=$HADOOP_HOME
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native export
PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin
alias hstart='/usr/local/Cellar/hadoop/3.1.1/libexec/sbin/start-all.sh'
alias hstop='/usr/local/Cellar/hadoop/3.1.1/libexec/sbin/start-all.sh'

export AIRFLOW_HOME=~/airflow
export HOMEBREW_GITHUB_API_TOKEN=$TOKEN
export PRESTO_HOME=/usr/local/Cellar/presto/0.215/libexec


# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
# added by Anaconda3 2019.03 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/karangupte/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/karangupte/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/karangupte/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/karangupte/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
