#!/usr/bin/env bash

# Install rustup, only run once
# curl https://sh.rustup.rs -sSf | sh

rustup component add clippy rust-analyzer rustfmt rust-src llvm-tools-preview

rustup toolchain install nightly
rustup component add clippy rustfmt rust-src miri --toolchain nightly

# Terminal bandwidth utilization tool
# https://github.com/imsnif/bandwhich
cargo install bandwhich --quiet
# A cat(1) clone with wings.
# https://github.com/sharkdp/bat
cargo install bat --quiet
# background rust code check
# https://github.com/Canop/bacon
cargo install bacon --quiet
# A new way to see and navigate directory trees
# https://github.com/Canop/broot
cargo install broot --quiet
# cargo subcommand showing the assembly or llvm-ir generated for Rust code
# https://github.com/gnzlbg/cargo-asm
cargo install cargo-asm --quiet
# Audit Cargo.lock files for crates with security vulnerabilities
# https://github.com/rob-solana/cargo-audit
cargo install cargo-audit --quiet
# Find out what takes most of the space in your executable.
# https://github.com/RazrFalcon/cargo-bloat
cargo install cargo-bloat --quiet
# LLVM-GCOV Source coverage for Rust
# https://github.com/kennytm/cov
cargo install cargo-cov --quiet
# Execute Rust code carefully, with extra checking along the way
# https://github.com/RalfJung/cargo-careful
cargo install cargo-careful --quiet
# Cargo plugin for linting your dependencies
# https://github.com/EmbarkStudios/cargo-deny
cargo install cargo-deny --quiet
# A cargo-companion to become a 'lean crate'
# https://github.com/the-lean-crate/cargo-diet
cargo install cargo-diet --quiet
# Disassembly viewer for rust projects
# https://github.com/ExPixel/cargo-disasm
cargo install cargo-disasm --quiet
# small http documentation server
# https://github.com/qmx/cargo-docserver
cargo install cargo-docserver --quiet
# A utility for managing cargo dependencies from the command line
# https://github.com/killercup/cargo-edit
cargo install cargo-edit --quiet
# Subcommand to show result of macro expansion
# https://github.com/dtolnay/cargo-expand
cargo install cargo-expand --quiet
# Extract the features for every compiled crate
# https://github.com/badboy/cargo-feature-set
cargo install cargo-feature-set --quiet
# A cargo subcommand for creating GraphViz DOT files and dependency graphs
# https://github.com/kbknapp/cargo-graph
cargo install cargo-graph --quiet
# Pssst!... see what Rust is doing behind the curtains
# https://github.com/mre/cargo-inspect
cargo install cargo-inspect --quiet
# Rust task runner and build tool.
# https://github.com/sagiegurari/cargo-make
cargo install cargo-make --quiet
# A cargo subcommand for displaying when Rust dependencies are out of date
# https://github.com/kbknapp/cargo-outdated
cargo install cargo-outdated --quiet
# Generate README.md from docstrings
# https://github.com/livioribeiro/cargo-readme
cargo install cargo-readme --quiet
# Cargo subcommand `release`: everything about releasing a rust crate
# https://github.com/crate-ci/cargo-release
cargo install cargo-release --quiet
# Check if tables and items in a .toml file are lexically sorted
# https://github.com/DevinR528/cargo-sort
cargo install cargo-sort --quiet
# Find unused dependencies in Cargo.toml
# https://github.com/est31/cargo-udeps
cargo install cargo-udeps --quiet
# A cargo subcommand for checking and applying updates to installed executables
# https://github.com/nabijaczleweli/cargo-update
cargo install cargo-update --quiet
# Watches over your Cargo project's source
# https://github.com/watchexec/cargo-watch
cargo install cargo-watch --quiet
# A simple cargo plugin to get a list of features for a specific crate
# https://github.com/museun/cargo-whatfeatures
cargo install cargo-whatfeatures --quiet
# “Zero setup” cross compilation and “cross testing” of Rust crates
# https://github.com/rust-embedded/cross
cargo install cross --quiet
# A syntax-highlighting pager for git, diff, and grep output
# https://github.com/dandavison/delta
cargo install delta --quiet
# a structural diff that understands syntax 🟥🟩
# https://github.com/Wilfred/difftastic
cargo install difftastic --quiet
# Terminal disk space navigator
# https://github.com/imsnif/diskonaut
cargo install diskonaut --quiet
# A more intuitive version of du in rust
# https://github.com/bootandy/dust
cargo install du-dust --quiet
# View disk space usage and delete unwanted data, fast
# https://github.com/Byron/dua-cli
cargo install dua-cli --quiet
# A Rust REPL
# https://github.com/google/evcxr
cargo install evcxr_repl --quiet
# A modern replacement for ‘ls’
# https://github.com/eza-community/eza
cargo install eza --quiet
# A simple, fast and user-friendly alternative to 'find'
# https://github.com/sharkdp/fd
cargo install fd --quiet
# Easy flamegraphs for Rust projects and everything else
# https://github.com/flamegraph-rs/flamegraph
cargo install flamegraph --quiet
# CLI tool to help keep track of your Git repositories
# https://github.com/nickgerace/gfold
cargo install gfold --quiet
# Checkout a Github PR with fuzzy selection
# https://github.com/knutwalker/git-coprs
cargo install --git https://github.com/knutwalker/git-coprs --quiet
# A syntax-highlighting pager for git and diff output
# https://github.com/dandavison/delta
cargo install git-delta --quiet
# Support for switching git authors and co-authors
# https://github.com/knutwalker/git-drive
cargo install git-drive --quiet
# Native cross-platform full feature terminal-based sequence editor for git interactive rebase
# https://github.com/MitMaro/git-interactive-rebase-tool
cargo install git-interactive-rebase-tool --quiet
# The Git Commit Message and Changelog Generation Framework
# https://github.com/saschagrunert/git-journal
cargo install git-journal --quiet
# Blazing 💥 fast terminal-ui for git written in rust 🦀
# https://github.com/extrawurst/gitui
cargo install gitui --quiet
# Interactive ASCII globe generator
# https://github.com/adamsky/globe
cargo install globe-cli --quiet
# Rust tool to collect and aggregate code coverage data for multiple source files
# https://github.com/mozilla/grcov
cargo install grcov --quiet
# A command-line tool and library for generating regular expressions from user-provided test cases
# https://github.com/pemistahl/grex
cargo install grex --quiet
# A post-modern modal text editor.
# https://github.com/helix-editor/helix
cargo install helix --quiet
# A command-line benchmarking tool
# https://github.com/sharkdp/hyperfine
cargo install hyperfine --quiet
# Personalised sdkman frontend specialized for Java
# https://github.com/knutwalker/jdkman
cargo install --git https://github.com/knutwalker/jdkman --quiet
# 🤖 Just a command runner
# https://github.com/casey/just
cargo install just --quiet
# Count lines of code quickly
# https://github.com/cgag/loc
cargo install loc --quiet
# cat for markdown
# https://github.com/lunaryorn/mdcat
cargo install mdcat --quiet
# A process viewer GUI in rust
# https://github.com/GuillaumeGomez/process-viewer
cargo install process_viewer --quiet
# Unit conversion tool and library written in rust
# https://github.com/tiffany352/rink-rs
cargo install rink --quiet
# ripgrep recursively searches directories for a regex pattern while respecting your gitignore
# https://github.com/BurntSushi/ripgrep
cargo install ripgrep --quiet
# sccache is ccache with cloud storage
# https://github.com/mozilla/sccache
cargo install sccache --quiet
# Intuitive find & replace CLI (sed alternative)
# https://github.com/chmln/sd
cargo install sd --quiet
# Create beautiful image of your source code.
# https://github.com/Aloxaf/silicon
cargo install silicon --quiet
# A terminal interface for Stack Overflow
# https://github.com/samtay/so
cargo install so --quiet
# Graph history of GitHub stars of a user or repo over time
# https://github.com/dtolnay/star-history
cargo install star-history --quiet
# Upgrade everything
# https://github.com/topgrade-rs/topgrade
cargo install topgrade --quiet
# unix utility for waiting on ports, http status, and more
# https://github.com/jzelinskie/w8
cargo install w8 --quiet
# The XXV visual hex viewer for the terminal
# https://github.com/chrisvest/xxv
cargo install xxv --quiet
# A smarter cd command. Supports all major shells.
# https://github.com/ajeetdsouza/zoxide
cargo install zoxide --quiet
