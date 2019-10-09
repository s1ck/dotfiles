#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install a modern version of Bash.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! grep -Fq "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
# brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
# brew install openssh
# brew install screen
# brew install php
# brew install gmp

# Install font tools.
# brew tap bramstein/webfonttools
# brew install sfnt2woff
# brew install sfnt2woff-zopfli
# brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
# brew install aircrack-ng
# brew install bfg
brew install binutils
# brew install binwalk
# brew install cifer
# brew install dex2jar
# brew install dns2tcp
# brew install fcrackzip
# brew install foremost
# brew install hashpump
# brew install hydra
# brew install john
# brew install knock
# brew install netpbm
brew install nmap
# brew install pngcheck
# brew install socat
# brew install sqlmap
# brew install tcpflow
# brew install tcpreplay
# brew install tcptrace
# brew install ucspi-tcp # `tcpserver` etc.
# brew install xpdf
# brew install xz

# Install other useful binaries.

brew install ack
brew install bat
brew install brew-graph
brew install cloc
brew install diff-so-fancy
# brew install exiv2
brew install fd
brew install fortune
brew install fzf
brew install gawk
brew install git
brew install git-lfs
brew install git-sizer
# brew install gnupg
# brew install gnutls
# brew install gpgme
brew install graphviz
# brew install gs
brew install htop
brew install htop-osx
brew install httpie
brew install iftop
brew install imagemagick --with-webp
brew install interactive-rebase-tool
brew install jid
brew install jo
brew install jq
brew install jvmtop
brew install lsd
brew install lua
# brew install lynx
brew install ncdu
brew install openssl
brew install p7zip
brew install pbzip2
brew install pick
brew install pigz
brew install ponysay
brew install prettyping
brew install procs
brew install pv
brew install qlcolorcode
brew install qlmarkdown
brew install qlprettypatch
brew install qlstephen
brew install quicklook-json
# brew install rename
brew install ripgrep
brew install rlwrap
brew install roll
brew install rsync
brew install rtmpdump
brew install ssh-copy-id
brew install the_silver_searcher
brew install trash
brew install tree
brew install unrar
# brew install vbindiff
brew install wrk
brew install youtube-dl
brew install zopfli

# Remove outdated versions from the cellar.
brew cleanup
