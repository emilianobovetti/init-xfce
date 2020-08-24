alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias cp='cp -i'
alias bc='bc -l'
alias ping='ping -c 5'

alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gpl='git pull'
alias gs='git status'
alias gd='git diff'
alias gco='git checkout'
alias gb='git branch'
alias gl="git log --format='%Cgreen%h%Creset %C(cyan)%an%Creset - %s' --graph"

alias desk="cd "$(xdg-user-dir DESKTOP)""
alias click-flood='xdotool click --repeat 100 --delay 10 1'
alias wine-killall="kill $(ps aux | grep -E  '.*\.exe' | awk '{print $2}')"

alias chromium-tor='chromium --proxy-server=SOCKS5://localhost:9050 --incognito'
alias wifi-mon="sudo 'iwconfig wlan0 mode Monitor && rfkill unblock wifi'"

function giphy {
    ffmpeg -i "$1" -vf "fps=10,scale=700:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 "$1".gif
}

function curl-json {
    curl -i -X POST -H "Content-type: application/json" -d "$2" "$1"
    echo
}
