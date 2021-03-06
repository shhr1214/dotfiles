export PATH="${HOME}/.local/bin:${PATH}"

# rust
source "${HOME}/.cargo/env"
export RUST_SRC_PATH="${HOME}/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/library"

# c/cpp
export PATH="/usr/local/opt/llvm/bin:${PATH}"
export LDFLAGS="-L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include $CPPFLAGS"

# haskell
export PATH="${HOME}/.cask/bin:${PATH}"

# ocaml
eval $(opam env)
alias ocaml="rlwrap ocaml"

# jvm family
alias cljs="lumo -r"
# For the system Java wrappers to find this JDK, symlink it with
# sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/usr/local/opt/openjdk/include ${CPPFLAGS}"

# dotnet
export PATH="/usr/local/share/dotnet:${PATH}"
export PATH="${HOME}/.dotnet/tools:${PATH}"

# go
export GO111MODULE=on
export GOPATH="${HOME}"
export GOBIN="$GOPATH/bin"
export PATH="$GOBIN:${PATH}"

# node
export NODE_PATH="${HOME}/.config/yarn/global/node_modules"
export PATH="${NODE_PATH}/bin:${HOME}/.yarn/bin:${PATH}"

# elm
export ELM_HOME="${HOME}/node_modules/elm"

# python
# export PYTHONUSERBASE="${HOME}/.local"
export PYTHON_HOST_PROG="${XDG_CONFIG_HOME}/pyenv/shims/python2"
export PYTHON3_HOST_PROG="${XDG_CONFIG_HOME}/pyenv/shims/python3"
export PYENV_ROOT="${XDG_CONFIG_HOME}/pyenv"
export PATH="${PYENV_ROOT}/bin:${PATH}"

pyenv() {
  unfunction "$0"
  source <(pyenv init -)
  $0 "$@"
}

alias ipy=ipython

# ruby
export GEM_HOME="${HOME}/bin/gem"
export PATH="/usr/local/opt/ruby/bin:${HOME}/bin/gem/bin:${PATH}"
export LDFLAGS="-L/usr/local/opt/ruby/lib ${LDFLAGS}"
export CPPFLAGS="-I/usr/local/opt/ruby/include ${CPPFLAGS}"
export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"
