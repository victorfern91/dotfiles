#!/usr/bin/env bash

# find current folder
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd );

# install utils
. "$DIR/utils.sh";

info $(get_current_folder);

warn "
####################################################
# 🎉 Welcome to your new machine  🎉               #
####################################################
# Steps:                                           #
#                                                  #
#  (1) Install development software                #
#  (2) Configure terminal (Iterm - ZSH)            #
#  (3) Configure Git                               #
#  (4) Configure Alias                             #
#  (5) Configure Git                               #
#  (6) Install productivity software               #
####################################################  
";

# Installing
#. "$DIR/steps/1.sh"
#. "$DIR/steps/2.sh"
# step 3
. "$DIR/steps/3.sh"
#. "$DIR/steps/6.sh"

