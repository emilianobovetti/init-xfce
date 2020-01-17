# System
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias cp='cp -i'
alias bc='bc -l'
alias ping='ping -c 5'

# Utils
alias desk="cd "$(xdg-user-dir DESKTOP)""
alias click-flood='xdotool click --repeat 100 --delay 10 1'
alias wine-killall="kill $(ps aux | grep -E  '.*\.exe' | awk '{print $2}')"

# Network
alias chromium-tor='chromium --proxy-server=SOCKS5://localhost:9050 --incognito'
alias pgstart='su - postgres -c "/usr/bin/pg_ctl -D /var/lib/pgsql/data -l logfile start"'
alias pgstop='su - postgres -c "/usr/bin/pg_ctl -D /var/lib/pgsql/data -l logfile stop"'
alias wifi-mon="sudo 'iwconfig wlan0 mode Monitor && rfkill unblock wifi'"

function pingb {
    exec 3>&1

    for ip in $1.{1..254}; do
        ( ping -c 1 -w 1 $ip > /dev/null && echo $ip >&3 & )
    done

    wait
}

function curl-json {
    curl -i -X POST -H "Content-type: application/json" -d "$2" "$1"
    echo
}

# Git
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gpl='git pull'
alias gs='git status'
alias gd='git diff'
alias gco='git checkout'
alias gb='git branch'
alias gl="git log --format='%Cgreen%h%Creset %C(cyan)%an%Creset - %s' --graph"
