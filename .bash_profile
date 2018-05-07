
alias cdd='cd ~/Dev'
alias cds='cd ~/.julia/v0.6/StochDynamicProgramming'
alias cdg='cd ~/.julia/v0.5/StochDynamicProgramming'
alias cj='cd ~/.julia/v0.6/'
alias jpn='jupyter notebook'
alias python='python3'
alias pip='pip3'
alias gr='grep -r'
alias twd="cd $TWD"
alias julia="~/lib/julia-0d7248e2ff/bin/julia"

psi(){ps aux --sort '%mem'  | tail -n 10 | awk '{printf "%-10s %s\n",$4, $11}' | sort -r;}

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
