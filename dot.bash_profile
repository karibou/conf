# ~/.bash_profile: executed by bash(1) for login shells.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/login.defs
#umask 022

# the rest of this file is commented out.

# set variable identifying the chroot you work in
#if [ -f /etc/debian_chroot ]; then
#  debian_chroot=$(cat /etc/debian_chroot)
#fi

# include .bashrc if it exists
#if [ -f ~/.bashrc ]; then
#    . ~/.bashrc
#fi

# set PATH so it includes user's private bin if it exists
#if [ -d ~/bin ] ; then
#    PATH=~/bin:"${PATH}"
#fi

# do the same with MANPATH
#if [ -d ~/man ]; then
#    MANPATH=~/man:"${MANPATH}"
#    export MANPATH
#fi

PATH=$PATH:/home/caribou/Android/adt-bundle-linux-x86_64-20130917/sdk/tools:/home/caribou/Android/adt-bundle-linux-x86_64-20130917/sdk/platform-tools:$PATH/git/usd-importer/bin:/home/caribou/.local/bin:/home/caribou/git/usd-importer/bin

#source .git-sh-prompt
source /usr/local/etc/bash_completion.d/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUPSTREAM=auto
export GIT_PS1_STATESEPARATOR=""

vi_tl()
{

	vi ~/.local/share/gtimelog/timelog.txt
}
tl_sum()
{
	~/git/tl/tl_sum.py  $@
}
rep_tl()
{
	~/git/tl/rep_tl.py
}
weekly_tl()
{
	~/git/tl/weekly_tl.py $@
}
cat_tl()
{
all=$1
	if [[ -z $all ]];then
		cat ~/.local/share/gtimelog/timelog.txt | tail -20
	else
		cat ~/.local/share/gtimelog/timelog.txt
	fi
}

###
### End of function definition
###
. ~/.host_aliases

#DISPLAY=:0.0;

export DISPLAY http_proxy LANG
if [ -x /usr/bin/xhost ];then
    xhost +
fi

PROMPT_COMMAND="history -a"
PS1='$(__git_ps1 "|%s|" 2>/dev/null)${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '
export GTIMELOG_USER="louis-bouchard"
source git/myjunk/alias_scw
