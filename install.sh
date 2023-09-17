#!/data/data/com.termux/files/usr/bin/bash

apt update && apt upgrade -y
apt install ncurses-utils openssl-tool nodejs -y

install(){
  fluttermux --install
}

if [ -f "$PREFIX/bin/fluttermux" ]; then
  rm "$PREFIX/bin/fluttermux"
fi

FLUTTERMUX_URL="https://raw.githubusercontent.com/bdloser404/Fluttermux/main/fluttermux"

if curl -Lo "$PREFIX/bin/fluttermux" "$FLUTTERMUX_URL"; then
  chmod +x "$PREFIX/bin/fluttermux"
  # Run the install function
  install
else
  tput bold
  echo "Download failed. Check the URL and try again."
  tpur sgr0
  exit 1
fi

