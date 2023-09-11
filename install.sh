#!/data/data/com.termux/files/usr/bin/bash
#!/bin/bash
trap 'exit_script' SIGINT
function exit_script() {
  read -n 1 -t 5 -p "Do you want to exit? (Y/n) " choice
  choice="${choice,,}"  # Convert the input to lowercase
  if [[ "$choice" == "y" ]]; then
    exit 1
  fi
}
apt update && apt upgrade -y
apt install ncurses-utils openssl-tool nodejs -y

pkg install neovim -y

install(){
	chmod +x fluttermux
	cp fluttermux $PREFIX/bin/
	fluttermux --install
}
install
