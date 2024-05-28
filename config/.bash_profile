#!/usr/bin/env bash 

push() {
  echo "Pushing commit with message: ${1:-update}"
  git add --all
  git commit -m "${1:-update}"
  git push origin $(git rev-parse --abbrev-ref HEAD)
}

pull() {
    git pull origin $(git rev-parse --abbrev-ref HEAD)
}

status() {
  git status
}

path() {
    echo $PATH | tr : '\n'
}

bfs() {
    i=1
    while results=$(find -mindepth $i -maxdepth $i "$@") && [[ -n $results ]]; do
        echo "$results" && ((i++))
    done
}

color_set() {
    # hex="#11001A"
    target="${1}"
    hex="${2}"
    rgb=$(printf "%d;%d;%d" 0x${hex:1:2} 0x${hex:3:2} 0x${hex:5:2})
    printf "\e[${target};2;${color}m\n"
}

color_configure() {
    
    # export TERM=xterm-256color
    # infocmp # View capabilties

    COLOR_ESCAPE='\e'
    COLOR_NONE='\e[0m'
    COLOR_BLUE='33;136;255' # #2188ff
    COLOR_SET_FOREGROUND_CUSTOM='\e[38'
    COLOR_SET_FOREGROUND_DEFAULT='\e[39'
    COLOR_SET_BACKGROUND_CUSTOM='\e[48'
    COLOR_SET_BACKGROUND_DEFAULT='\e[49'

    # Set Colours
    printf '\e[38;2;209;213;218m\n' # Foreground #d1d5da 209;213;218
    printf '\e[48;2;36;41;46m\n' # Background #24292e 36;41;46
    # printf '\e[48;2;90;60;46m\n' # Background #24292e 36;41;46
    # printf '\e[48;2;33;136;255m\n'

    clear # Clear Screen

    # export PS1="\e"
    # echo -e "\033[38;5;224mTEST\033[0;00m"
    # printf "\e[38;5;200mTEST\e[0;00m\n"
    # printf %b "\e[38;#ff0000\a"

    # "terminal.ansiBrightWhite": "#2f363d" 
    # "terminal.ansiWhite": "#6a737d"
    # "terminal.ansiBrightBlack": "#959da5"
    # "terminal.ansiBlack": "#d1d5da"
    # "terminal.ansiBlue": "#2188ff" 33;136;255
    # "terminal.ansiBrightBlue": "#005cc5"
    # "terminal.ansiGreen": "#34d058"
    # "terminal.ansiBrightGreen": "#28a745"
    # "terminal.ansiCyan": "#39c5cf"
    # "terminal.ansiBrightCyan": "#56d4dd"
    # "terminal.ansiRed": "#ea4a5a",
    # "terminal.ansiBrightRed": "#d73a49",
    # "terminal.ansiMagenta": "#5a32a3",
    # "terminal.ansiBrightMagenta": "#5a32a3",
    # "terminal.ansiYellow": "#f9c513"
    # "terminal.ansiBrightYellow": "#f9c513"

    # "black": "#1b1f23",
    # "white": "#fff",
    # "gray": ["#fafbfc", "#f6f8fa", "#e1e4e8", "#d1d5da", "#959da5", "#6a737d", "#586069", "#444d56", "#2f363d", "#24292e"]
    # "blue": ["#f1f8ff", "#dbedff", "#c8e1ff", "#79b8ff", "#2188ff", "#0366d6", "#005cc5", "#044289", "#032f62", "#05264c"]
    # "green": ["#f0fff4", "#dcffe4", "#bef5cb", "#85e89d", "#34d058", "#28a745", "#22863a", "#176f2c", "#165c26", "#144620"]
    # "yellow": ["#fffdef", "#fffbdd", "#fff5b1", "#ffea7f", "#ffdf5d", "#ffd33d", "#f9c513", "#dbab09", "#b08800", "#735c0f"]
    # "orange": ["#fff8f2", "#ffebda", "#ffd1ac", "#ffab70", "#fb8532", "#f66a0a", "#e36209", "#d15704", "#c24e00", "#a04100"]
    # "red": ["#ffeef0", "#ffdce0", "#fdaeb7", "#f97583", "#ea4a5a", "#d73a49", "#cb2431", "#b31d28", "#9e1c23", "#86181d"]
    # "purple": ["#f5f0ff", "#e6dcfd", "#d1bcf9", "#b392f0", "#8a63d2", "#6f42c1", "#5a32a3", "#4c2889", "#3a1d6e", "#29134e"]
    # "pink": ["#ffeef8", "#fedbf0", "#f9b3dd", "#f692ce", "#ec6cb9", "#ea4aaa", "#d03592", "#b93a86", "#99306f", "#6d224f"]

    # Test ANSI colors with:
    # echo -e "\033[0mNC (No color)"
    # echo -e "\033[1;37mWHITE\t\033[0;30mBLACK"
    # echo -e "\033[0;34mBLUE\t\033[1;34mLIGHT_BLUE"
    # echo -e "\033[0;32mGREEN\t\033[1;32mLIGHT_GREEN"
    # echo -e "\033[0;36mCYAN\t\033[1;36mLIGHT_CYAN"
    # echo -e "\033[0;31mRED\t\033[1;31mLIGHT_RED"
    # echo -e "\033[0;35mPURPLE\t\033[1;35mLIGHT_PURPLE"
    # echo -e "\033[0;33mYELLOW\t\033[1;33mLIGHT_YELLOW"
    # echo -e "\033[1;30mGRAY\t\033[0;37mLIGHT_GRAY"

}

tmux_help() {
    echo "Tmux Help:"
    echo "   c   : Window New Find CD"
    echo "   v   : Window New Find Vi"
    echo "   r   : Window New Find Run"
    echo " <Tab> : Window Last"
    echo "  <N>  : Window Select"
    echo "   f   : Window Find"
    echo "   n   : Window Next"
    echo "   p   : Window Previous"
    echo "   &   : Window Kill"
    echo "   e   : Window Kill Immediate"
    echo "   w   : Session/Window/Pane Choose"
    echo "   h   : Show Help"
    echo "   ?   : Show All Shortcuts"
}

tmux_configure() {
    tmux unbind C-b
    tmux set-option -g prefix \`
    tmux bind-key \` send-prefix
    tmux bind r run-shell "tmux send-keys source ~/.bash_profile Enter"
    tmux bind c run-shell "tmux send-keys tmux_find_cd Enter"
    tmux bind v run-shell "tmux send-keys tmux_find_vi Enter"
    tmux bind h run-shell "tmux send-keys tmux_help Enter"
    tmux bind e kill-window
    tmux bind Tab last-window
    tmux set -g base-index 1    
    tmux set -g status-left " #{?client_prefix,P,N} [#S] "

    # set_forecground setf

    # tmux unbind c
    # tmux unbind r
    # tmux bind r run-shell "tmux new-window source ~/.bash_profile"
    # tmux unbind v
    # tmux bind v run-shell "tmux new-window tmux_find_vi"
    # tmux bind r source-file ~/.tmux.conf
    # tmux set-window-option -g window-status-current-bg yellow
}

tmux_run() {
    tmux attach-session || tmux new-session
    # [ -z "$TMUX" ] && { tmux attach-session || exec tmux new-session && exit; }
}

tmux_clear() {
    tmux kill-session -a
}

tmux_find_cd() {
    # FIXME: Use bfs and fix performance
    dir=$(find -mindepth 1 -maxdepth 4 -type d | fzf -e --preview "ls {}" --color 'fg:#ffffff,fg+:#ddeeff,bg:#1f2428,preview-bg:#1f2428,border:#778899')
    # dir=$(find -mindepth 1 -type d | fzf -e --preview "ls {}" --color 'fg:#ffffff,fg+:#ddeeff,bg:#1f2428,preview-bg:#1f2428,border:#778899')
    if [[ -n "${dir}" ]]; then
        # name=$(basename "${dir}" | tr . _) # name=$( ??? | tr "./" "__")
        name=$(basename "${dir}" | tr . _ | tr "./" "__" | tr -s "[:blank:]")
        session_name=$(tmux display-message -p "#S")
        echo "Loading Window $name in $dir"
        if ! tmux has-session -t="${session_name}:${name}" 2> /dev/null; then
            echo "Created Window $name"
            tmux new-window -d -n $name -c $dir
        fi
        tmux select-window -t $name
    fi
}

tmux_find_vi() {
    file=$(find -mindepth 1 -maxdepth 4 -type f | fzf -e --preview "cat {}" --color 'fg:#ffffff,fg+:#ddeeff,bg:#1f2428,preview-bg:#1f2428,border:#778899')
    if [[ -n "${file}" ]]; then 
        name=$(basename "${file}" | tr . _)
        session_name=$(tmux display-message -p "#S")
        echo "Loading Window $name with $file"
        if ! tmux has-session -t="${session_name}:${name}" 2> /dev/null; then
            echo "Created Window $name"
            tmux new-window -d -n $name vi ${file}
        fi
        tmux select-window -t $name
    fi
}

# FIXME: TBC
# tmux_find_run() {
#     file=$(find -mindepth 1 -type f -executable | fzf -e --preview "cat {}" --color 'fg:#ffffff,fg+:#ddeeff,bg:#1f2428,preview-bg:#1f2428,border:#778899')
#     if [[ -n "${file}" ]]; then 
#         name=$(basename "${file}" | tr . _)
#         session_name=$(tmux display-message -p "#S")
#         echo "Loading Window $name with $file"
#         if ! tmux has-session -t="${session_name}:${name}" 2> /dev/null; then
#             tmux new-window -d -n $name ${file}
#         fi
#         tmux select-window -t $name
#     fi
# }

# alias_configure() {
#     alias vi="nvim"
#     alias vim="nvim"
# }

main() {

    # alias_configure
    
    color_configure
    
    # echo "Loading Profile from ~/.bash_profile"

    if [[ "$(pwd)" == "/home/$(whoami)" ]]; then
        cd /mnt/c/Users/$(whoami)/$(whoami)/
    fi

    # Go Path
    export PATH=$PATH:/home/$(whoami)/go/bin/

    if [[ -z "${TMUX}" ]]; then 
        tmux_run
    fi
    tmux_configure
}

main

# if [[ $# -eq 0 ]] ; then 
#     main
# else 
#     eval ${@}
# fi
