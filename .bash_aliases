
# Usual aliases
alias cdd='cd $HOME/dev'
alias jpn='jupyter notebook'
alias julia='$HOME/lib/julia-1.4.2/bin/julia --sysimage $HOME/dev/precompil/sys_plots.so'
alias jdev='cd $HOME/.julia/dev/'
alias valmem='valgrind --tool=memcheck --leak-check=full --show-leak-kinds=all --track-origins=yes \
                --verbose \
                --dsymutil=yes \
                --log-file=valgrind-out.txt'

alias mbench="/usr/bin/time -f 'memory: %K RSS: %M  time: %E'"
alias lowres="xrandr --output VGA-1 --mode 1360x768"
alias hires="xrandr --output VGA-1 --mode 1920x1080"
alias hiires="xrandr --output VGA-1 --mode 2560x1440"

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
