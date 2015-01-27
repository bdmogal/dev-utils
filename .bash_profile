
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
export JAVA_HOME=/Library/Java/Home
#ls colors
export LSCOLORS="gxfxcxdxbxegedabagacad"
# MacPorts Installer addition on 2012-09-29_at_22:45:44: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Docker
export DOCKER_HOST=tcp://127.0.0.1:4243
# Add time to history
export HISTTIMEFORMAT="%d/%m/%y %T "



# PS1 and prompt
if [ -f "$HOME/.bash_ps1" ]; then
    . "$HOME/.bash_ps1"
fi
PS1_NO_GIT=$PS1
if [ -f "$HOME/.git_svn_bash_prompt" ]; then
    . $HOME/.git_svn_bash_prompt
fi
if [ -f "$HOME/.git_completion" ]; then
    . $HOME/.git_completion
fi


# aliases
if [ -f "$HOME/.bash_aliases" ]; then
    . $HOME/.bash_aliases
fi


# functions
if [ -f "$HOME/.bash_functions" ]; then
    . $HOME/.bash_functions
fi


# company specific stuff
if [ -f "$HOME/.bash_company" ]; then
    . "$HOME/.bash_company"
fi
