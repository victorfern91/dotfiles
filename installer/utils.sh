#!/usr/bin/env bash

##
# Install scripts shared utils
#

# Global colors
black='\033[0;30m'
red='\033[0;31m'
green='\033[0;32m'
orange='\033[0;33m'
cyan='\033[0;36m'
gray='\033[0;37m'
yellow='\033[1;33m'
white='\033[1;37m'
nc='\033[0m'


# Status indicators
msg () {
    echo "$@";
}

warn () {
    printf "$yellow %s $nc \n" "$@";
}

info () {
    printf "$cyan %s $nc \n" "$@";
}

success () {
    printf "\033[0;32m %s \033[0m \n" "$@";
}

error () {
    printf "\033[0;31m %s \033[0m \n" "$@"; >&2;
    exit 1;
}

prompt () {
    echo "$@";
    select yn in "Yes" "No"; do
        case ${yn} in
            Yes ) return 0; exit;;
            No ) return 1; exit;;
        esac
    done
}

ask () {
    local answer;
    read  -p "${@}: " answer;
    echo "${answer}";
}

ask_default () {

    local question;
    local default_value;
    local answer;

    question="$1";
    default_value="$2";
    answer=$(ask "$question [$2]");

    if [ -z "${answer}" ]; then
        echo "${default_value}";
    else
        echo "${answer}";
    fi
}

get_current_folder () {
    echo $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd );
}