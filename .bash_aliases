# bash aliases
alias rmr='rm -rf'
alias reload='source ~/.bash_profile'
alias ip="curl -s http://www.showmyip.com/simple/ | awk '{print $1}'"

# dir traversals
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# lock computer
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'

# some more ls aliases
#alias ll='ls -l'
alias ll='ls -lhaGrt'
alias lart='ls -lart'
alias la='ls -A'
alias lh='ls -lSh'
alias l='ls -CF'

# grep
alias grep='grep --color=auto'
alias g='grep -ri --color=auto'
alias gj='grep -ri --include=*.java --exclude=*/test/* --color=auto'
alias gjt='grep -ri --include=*.java --color=auto'

# maven
alias mc='mvn clean'
alias minst='mvn clean install'
alias mpkg='mvn clean package'
alias mtest='mvn clean compile test'

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

# git aliases
alias gis='git status'
alias gif='git diff'
alias gic='git commit -m'
alias gica='git commit -am'
alias gil="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"

# svn
alias sup='svn up'
alias sco='svn co'
alias sci='svn ci'
alias sta='svn status'
alias sdif='svn diff'
alias srm='svn rm'
alias smv='svn mv'

# various aliases
alias ':e'='vim'
alias ':WM'='make'
alias earlier='touch -d 1999-12-31'
alias rbackup='rsync -ghlport'

# du aliases
alias duh='du -sh'
duh1() {
    du -h --max-depth=1 "$@" | sort -h
}

VLESS=$(find /usr/share/vim -name 'less.sh')
if [ ! -z $VLESS ]; then
  alias less=$VLESS
fi

