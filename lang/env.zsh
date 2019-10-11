export PATH="$HOME/.local/bin:$PATH"

# rust
source "$HOME/.cargo/env"
export RUST_SRC_PATH="$HOME/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src"

# haskell
export PATH="$HOME/.cask/bin:$PATH"

# ocaml
eval $(opam env)
alias ocaml="rlwrap ocaml"

# dotnet
export PATH="/usr/local/share/dotnet:$PATH"

# go
export GOPATH="$HOME"
export GOBIN="$GOPATH/bin"
export PATH="$GOBIN:$PATH"

# node
export PATH="$HOME/.yarn/bin:$PATH"

# elm
export ELM_HOME="$HOME/node_modules/elm"

# ruby
export GEM_HOME="$HOME/bin/gem"
export PATH="$HOME/bin/gem/bin:$PATH"