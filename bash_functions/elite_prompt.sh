function elite
{

	local GRAY="\[\033[1;30m\]"
	local LIGHT_GRAY="\[\033[0;37m\]"
	local CYAN="\[\033[0;36m\]"
	local LIGHT_CYAN="\[\033[1;36m\]"
	local NO_COLOUR="\[\033[0m\]"
	
	case $TERM in
	    xterm*|rxvt*)
	        local TITLEBAR='\[\033]0;\u@\h:\w\007\]'
	# "#\u@\h \W> "
	        ;;
	    *)
	        local TITLEBAR=""
	        ;;
	esac
	
	local temp=$(tty)
	local GRAD1=${temp:5}
	PS1="$TITLEBAR\
	$GRAY-$CYAN-$LIGHT_CYAN(\
	$CYAN\u$GRAY@$CYAN\h\
	$LIGHT_CYAN)$CYAN-$LIGHT_CYAN(\
	$CYAN\#$GRAY/$CYAN$GRAD1\
	$LIGHT_CYAN)$CYAN-$LIGHT_CYAN(\
	$CYAN\$(date +%H%M)$GRAY/$CYAN\$(date +%d-%b-%y)\
	$LIGHT_CYAN)$CYAN-$GRAY-\
	$LIGHT_GRAY\n\
	$GRAY-$CYAN-$LIGHT_CYAN(\
	$CYAN\$$GRAY:$CYAN\w\
	$LIGHT_CYAN)$CYAN-$GRAY-$LIGHT_GRAY " 
	PS2="$LIGHT_CYAN-$CYAN-$GRAY-$NO_COLOUR "
}