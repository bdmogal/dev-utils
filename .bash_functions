function hgrep
{
    history | grep -i "$@"
}

function gkill
{
   kill -9 `ps -ef | grep $1 | grep -v grep | awk '{print $2}'`
}

function jcfind
{
    find . -iname "$1.java"
}
