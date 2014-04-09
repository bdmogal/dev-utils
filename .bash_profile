
#=== start of automatically maintained lines (do not delete)===
# .bashrc, sourced by interactive non-login shells (also called by .bash_profile)
export PATH=/home/y/bin64:/home/y/sbin64:/sbin:/usr/sbin:/bin:/usr/bin:/home/y/bin:/usr/local/bin:/usr/X11R6/bin:/usr/NX/bin
umask 022
if [ "$PS1" != "" ]
then
        PS1="\h \t \w \$ "
          setenv ()  { export $1="$2"; }
        unsetenv ()  { unset $*; }
fi
#===   end of automatically maintained lines (do not delete)===
# per-user custom comands go here...

#environment
export EDITOR=vim
export MAVEN_OPTS=-Xmx1024m

PS1='\[\e[0;37m\](\[\e[m\]\[\e[0;32m\]\u@\h\[\e[m\]\[\e[0;37m\])\[\e[m\] : \[\e[0;37m\](\[\e[m\]\[\e[0;36m\]\d \t\[\e[m\]\[\e[0;37m\])\[\e[m\] : \[\e[0;37m\](\[\e[m\]\[\e[0;36m\]shell:\s jobs:\j term:\l\[\e[m\]\[\e[0;37m\])\[\e[m\] : \[\e[0;37m\](\[\e[m\]\[\e[0;32m\]\w\[\e[m\]\[\e[0;37m\])\[\e[m\] \n\[\e[0;37m\](\[\e[m\]\[\e[0;36m\]\!.\#\[\e[m\]\[\e[0;37m\])\[\e[m\] \[\e[0;32m\]\$\[\e[m\] \[\e[0;32m\]'
#PS1='\[\e[m\]\[\e[0;32m\]\u@\h\[\e[m\]\[\e[m\] : \[\e[m\]\[\e[0;36m\]\d \t\[\e[m\]\[\e[m\] : \[\e[m\]\[\e[0;36m\]shell:\s jobs:\j term:\l\[\e[m\]\[\e[m\] : \[\e[m\]\[\e[0;32m\]\w\[\e[m\]\[\e[m\] \n\[\e[m\]\[\e[0;36m\]\!.\#\[\e[m\]\[\e[m\] \[\e[0;32m\]\$\[\e[m\] \[\e[0;32m\]'
#PS1='\[\e[m\]\[\e[7;93m\]\u@\h \d \t \w \n\!.\# \$\[\e[m\] \[\e[0;32m\]'
#export AA_P="export PVE="\033[m\033[38;5;2m"$(( `sed -n "s/MemFree:[\t]\+\([0-9]\+\) kB/\1/p" /proc/meminfo` / 1024 ))"\033[38;5;22m/"$((`sed -n"s/MemTotal:[\t ]\+\([0-9]\+\) kB/\1/p" /proc/meminfo`/ 1024))MB"\t\033[m\033[38;5;55m$(< /proc/loadavg)\033[m";echo -en """
#export PVE="\033[m\033[38;5;2m813\033[38;5;22m/1024MB\t\033[m\033[38;5;55m0.25 0.22 0.18 1/66 26820\033[m" && eval $AA_P
#export PS1='[m][$$:$PPID - j:![m]][;36m] Td [m][[m]u@H[m]:[;37m]${SSH_TTY}   [;32m]+${SHLVL}[m]] [m]w[;37m] n$ '
#export PS1='[\u@\h \[\e[7;33m\]\w\[\e[0m\]]$ '

#aliases
alias ll='ls -lhaGrt'
alias lart='ls -lart'
alias la='ls -la'
alias mc='mvn clean'
alias minst='mvn clean install'
alias mpkg='mvn clean package'
alias mtest='mvn clean compile test'
alias rmr='rm -rf'
alias sup='svn up'
alias sco='svn co'
alias sci='svn ci'
alias sta='svn status'
alias sdif='svn diff'
alias srm='svn rm'
alias smv='svn mv'
alias reload='source ~/.bash_profile'
alias g='grep -ri --color=auto'
alias gj='grep -ri --include=*.java --exclude=*/test/* --color=auto'
alias grep='grep --color=auto'
alias ip="curl -s http://www.showmyip.com/simple/ | awk '{print $1}'"
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

#lock computer
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'


# hadoop
alias hls='hadoop fs -ls'
alias hcat='hadoop fs -cat'
alias hdus='hadoop fs -dus'
alias hrmr='hadoop fs -rmr'
alias hrmrs='hadoop fs -rmr -skipTrash'
alias hput='hadoop fs -put'
alias hget='hadoop fs -get'
alias hkill='hadoop job -kill'
alias hjar='hadoop jar'

# mfu grep commands
alias h="history|grep "
alias f="find . |grep "
alias p="ps -ef |grep "

# file operations
alias l="less"
alias m="more"
alias c="cat"
alias t="touch"
alias v="vim"
alias e="emacs"



VLESS=$(find /usr/share/vim -name 'less.sh')
if [ ! -z $VLESS ]; then
  alias less=$VLESS
fi

export JAVA_HOME=/Library/Java/Home

##
# Your previous /Users/mogalb/.bash_profile file was backed up as /Users/mogalb/.bash_profile.macports-saved_2012-09-29_at_22:45:44
##

# MacPorts Installer addition on 2012-09-29_at_22:45:44: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


source ~/.p4settings

PS1_NO_GIT=$PS1
. ~/.git_svn_bash_prompt


export PATH=/opt/subversion/bin:$PATH

# gradle
export GRADLE_HOME=/Users/mogalb/Documents/software/gradle-1.11/
export PATH=$PATH:$GRADLE_HOME/bin

# groovy
export GROOVY_HOME=/Users/mogalb/Documents/software/groovy-2.2.2/
export PATH=$PATH:$GROOVY_HOME/bin
