#!/usr/bin/env bash
set -euo pipefail

source dependencies.sh

mkdir -p ~/.byond/bin
wget -O ~/.byond/bin/librust_g.so "https://github.com/tgstation/rust-g/releases/download/$RUST_G_VERSION/librust_g.so"
chmod +x ~/.byond/bin/librust_g.so

wget -O ~/.byond/bin/libBSQL.so "https://github.com/tgstation/rust-g/releases/download/$BSQL_VERSION/libBSQL.so"
chmod +x ~/.byond/bin/libBSQL.so
