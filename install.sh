#!/usr/bin/env bash

# This script installs Bashsh.

: ${PREFIX:=/usr/local}

set -e
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


# vvv PARTIAL COPY OF BASHSH-0 vvv

# http://misc.flogisoft.com/bash/tip_colors_and_formatting
# http://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux#comment24883926_5947802
bold='\033[1m'
normal='\033[0m'

function QUOTED() {
  echo "$(printf "%q " "$@")"
}

function CMD_STR() {
  echo -ne "$bold" >&2
  echo "$@" >&2
  echo -ne "$normal" >&2
  eval "$@"
}

function CMD() {
  CMD_STR "$(QUOTED "$@")"
}

function MSG() {
  echo -ne "$bold" >&2
  echo "# $@" >&2
  echo -ne "$normal" >&2
}

function READ_P() {
  echo -ne "$bold" >&2
  echo -n "# $1"
  echo -ne "$normal" >&2
  shift
  read "$@" >&2
}

# ^^^ PARTIAL COPY OF BASHSH-0 ^^^


if [[ $1 = bpkg ]] ; then
  CMD install ./bashsh   "$PREFIX"/bin
  CMD install ./bashsh-0 "$PREFIX"/bin
  exit 0
fi

# TODO: Installation via Homebrew.

# # TODO: Installation by downloading and executing this script.
# if ! hash git &> /dev/null ; then
#   MSG 'ERROR: Git not installed: http://git-scm.com/'
#   exit 1
# fi
