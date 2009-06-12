# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

EDITOR=/usr/bin/vim
export $EDITOR

alias ls='ls -h --color=auto'

# Put your fun stuff here.
[[ -f /etc/profile.d/bash-completion ]] && source /etc/profile.d/bash-completion

/usr/bin/keychain ~/.ssh/id_dsa
source ~/.keychain/Gentoo-T60-sh > /dev/null

echo "  (  )   /\   _                 (     "
echo "     \ |  (  \ ( \.(             )                        _____"
echo "      \  \ \  `  `   ) \             (   ___                 / _   \ "
echo ' (_`    \+   . x  \( .\            \/   \____-----------/ (o)   \_'
echo " - .-               \+  -          (  O                           \____ "
echo " )                         )        \_____________                \  " 
echo "(__                +- .( -\'.- <. - _  VVVVVVV VV V\               \ "
echo "(_____            ._._: <_ - <- _  (--  _AAAAAAA__A_/               |"
echo "  .    /./.+-  . .- /  +--  - .     \______________//_              \_______"
echo "  (__ ' /x  / x _/ (                                  \___'          \     /"
echo " , x / ( '  . / .  /                                      |           \   /"
echo "    /  /  _/ /    +                                      /              \/"
echo "   '  (__/                                             /                  \ "
