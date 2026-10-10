#!/bin/bash
#
help() {
        echo: help
}

updatesudoer() {
        sudo sed -i 's/%sudo\s*ALL=(ALL:ALL) ALL/%sudo   ALL=(ALL:ALL) NOPASSWD:ALL/' /etc/sudoers
}

updatebash_alias() {
        if [ -e ~/.bash_aliases ]; then
                echo .bash_aliases exists
                exit
        else
        cat << EOF > ~/.bash_aliases
alias c='clear'
alias h='history'
alias hg='history |grep -i '
alias edal='vi ~/.bash_aliases'
alias sb='. ~/.bashrc'
alias k='kubectl'
alias ping='ping -c 4'
alias locate='locate -i'

# find to skip /mnt folder on wsl.
function wfind() {
if [ -z "$1" ]; then
echo search argument required
return
else
        folders=("/dev" "/etc" "/home" "/media" "/opt" "/run" "/srv" "/tmp" "/usr" "/var")
        for f in ${folders[*]};do
                find $f -name $1
        done
fi
}
EOF
        fi
}



argv=$1
if [ -z $argv ]; then
        main
elif [ $argv ]; then
        if function_exists "$argv"; then
                $argv
        else
                echo invalid argument: $argv
                help
        fi
else
    echo "Invalid choice [${argv}]..."
fi
