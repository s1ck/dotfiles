#!/usr/bin/env bash

# Install rustup, only run once
# curl https://sh.rustup.rs -sSf | sh

rustup component add clippy rustfmt rust-src llvm-tools-preview

rustup toolchain install nightly
rustup component add clippy rustfmt rust-src --toolchain nightly

cargo install cargo-cov
cargo install cargo-edit
cargo install cargo-expand
cargo install cargo-graph
cargo install cargo-sort-ck
cargo install cargo-tree
cargo install cargo-udeps
cargo install cargo-update
cargo install cargo-watch
cargo install du-dust
cargo install flamegraph
cargo install fw
cargo install git-journal
cargo install tin-summer
cargo install xv
