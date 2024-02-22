#!/usr/bin/env bash

#
# 1. Instaling dev software
#

start() {
    # installing homebrew
    info "# 1.1 -> Homebrew";
    install_homebrew;
    info "# 1.2 -> Installing Iterm2";
    brew install --cask iterm2;
    info "# 1.3 Installing Xcode dev plugins"
    xcode-select —-install;
    success "# 1.3 -> Xcode installed"
    info "# 1.4 Installing Surfshark VPN (remote work/personal VPN)"
    brew install --cask surfshark
    success "# 1.4 -> Surfshark VPN installed"
    info "# 1.5 Installing Webstorm"
    brew install --cask webstorm
    success "# 1.5 -> Webstorm installed"
    info "# 1.5 Installing VSCode"
    brew install --cask visual-studio-code
    success "# 1.5 -> Webstorm VSCode"
}

# Detect binaries
has_binary () {
    local binary=$1;
    binary=$(which brew);

    if [[ -n "${binary}" && -e "${binary}" ]];
    then
        echo 1;
        return 1;
    fi
}

install_homebrew () {
    if [[ $(has_binary "brew") == 1 ]];
    then
        info "Updating homebrew repositories and packages"
        brew update;
        brew upgrade;
        brew cleanup;
        success "Homebrew and packages updated!";
    else
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";
	(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/victor/.zprofile
    	eval "$(/opt/homebrew/bin/brew shellenv)"
    fi
}

# Execute
start;
