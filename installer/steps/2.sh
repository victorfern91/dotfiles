#!/usr/bin/env bash

#
# 2. Instaling Z Shell
#

start() {
    info "# 2.1 -> Install zsh";
    brew install zsh
    success "# 2.1 -> Installed  zsh";
    info "# 2.2 -> Install Oh My Zsh";
    sudo  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";
    success "# 2.2 -> Installed Oh My Zsh";
    info "# 2.3 -> Customizing zsh";
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
    brew tap homebrew/cask-fonts;
    brew install --cask font-source-code-pro;
    brew install --cask homebrew/cask-fonts/font-powerline-symbols;
    cd ~
    git clone git@github.com:mbadolato/iTerm2-Color-Schemes.git
    cd iTerm2-Color-Schemes
    sh tools/import-scheme.sh 'Nord'
    cd $DIR
    success "# 2.3 -> Zsh Customized";
    sudo cp $DIR/../zsh/.zshrc ~/.zshrc
    zsh ~/.zshrc
}

# Execute
start;
