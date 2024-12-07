# Alias
# ---
#
# alias k="kubectl"
# alias h="helm"
# alias tf="terraform"
# alias a="ansible"
# alias ap="ansible-playbook"

# -----------------------------------------------------
# General
# -----------------------------------------------------
# General
alias c="clear"                                                                     # clear the terminal
alias up="sudo apt update"                                                          # update the system
alias ug="sudo apt -y full-upgrade"                                                 # upgrade the system
alias fup="sudo apt update && sudo apt -y upgrade"                                  # update and upgrade the system
# install
alias install="sudo apt install -y"                                                 # Install Applications
# report
alias batteryreport="upower -i /org/freedesktop/UPower/devices/battery_BAT1"        # get battery report
# systeminfo
alias ghost="gs"                                                                    # replace ghostscript command so git status works properly
alias os-info-short="cat /etc/os-release"
alias nf='neofetch'                                                                 # show system information
alias ff='fastfetch'                                                                # show system information
alias clear-swap="sudo swapoff -a; sudo swapon -a"                                  # clear swap memory
# poweroption
alias shutdown='systemctl poweroff'                                                 # shutdown the system
# network
alias wifi='nmtui'                                                                  # wifi settings
# ls directory
alias e="exit"                                                                      # exit the terminal
alias cd="z"                                                                        # change directory
alias o="nautilus ."                                                                # Open the current directory in Finder
alias lt='eza -a --tree --level=1 --icons=always'                                   # show system information
alias ls="eza --icons --group-directories-first"                                    # list files and directories
alias ll="eza --icons --group-directories-first -l"                                 # list files and directories with details
alias la="eza --icons --group-directories-first -l -a"                              # list all files and directories with details
alias bat="$HOME/.bat/bat"                                                          # bat command
alias cat="bat"                                                                     # cat command
# zshrc
alias changezsh="nano ~/.zshrc"                                                     # change the zsh configuration
alias sz="source $HOME/.zshrc"                                                      # reload the zsh configuration


# -----------------------------------------------------
# General Directories
# -----------------------------------------------------
alias gprj="z $HOME/Documents/Projects"                                             # open project folder in terminal
alias gcs="z $HOME/Vault's/10 Cheat-sheets"                                         # open cheat sheet folder in terminal
alias vsetting="code ~/.config/Code/User/settings.json"                             # open visual studio code setting in vscode


# -----------------------------------------------------
# Applications
# -----------------------------------------------------
alias postman="z ~/Postman && ./Postman"                                            # open postman
# alias code="open -a 'Visual Studio Code'"
alias code="/usr/share/code/bin/code"                                               # open vscode


# -----------------------------------------------------
# Git
# -----------------------------------------------------
alias gi='git init'                                                                # initialize a git repository
alias gro='git remote add origin'                                                  # add a remote repository
alias ga='git add'                                                                 # add files to the staging area
alias gaa='git add .'                                                              # add all files to the staging area
alias gcm='git commit -m'                                                          # commit files with a message
alias gpsh='git push'                                                              # push files to the remote repository
alias gpsho='git push -u origin'                                                   # push files to the remote repository and set the upstream tracking information
alias gss='git status -s'                                                          # show the status of the repository
alias gs='echo ""; echo "*********************************************"; echo -e "   DO NOT FORGET TO PULL BEFORE COMMITTING"; echo "*********************************************"; echo ""; git status'              # show the status of the repository


# -----------------------------------------------------
# pnpm
# -----------------------------------------------------
alias p="pnpm"                                                                     # pnpm command
alias pi="pnpm install"                                                            # install packages
alias pa="pnpm add"                                                                # add packages
alias pd="pnpm dev"                                                                # run development mode
alias pb="pnpm build"                                                              # build the project
alias pr="pnpm run"                                                                # run scripts
alias psd="pnpm start:dev"                                                         # start development mode
alias pbs="pnpm build:prod"                                                        # build the project in production mode
alias pbsd="pnpm start:prod"                                                       # start the project in production mode


# -----------------------------------------------------
# ssh
# -----------------------------------------------------
alias prx="ssh "                                                                   # remote connection
alias prxh="ssh -Y "                                                               # remote connection with X11 forwarding


# -----------------------------------------------------
# Programming-Language
# -----------------------------------------------------
alias swift="$HOME/.swift/usr/bin/swift"                                           # swift command
alias serve='python3 -m http.server'

# -----------------------------------------------------
# Labs
# -----------------------------------------------------
alias .labs="$HOME/.labs"                                                           # labs command


# -----------------------------------------------------
# Openvpn
# -----------------------------------------------------
alias htbvpn="cd .labs/hackthebox/openvpn"                                          # openvpn command
alias thmvpn="cd .labs/tryhackme/openvpn"                                           # openvpn command


# -----------------------------------------------------
# College
# -----------------------------------------------------
alias .college="$HOME/.college"                                                     # college command


# -----------------------------------------------------
# Docker
# -----------------------------------------------------
alias dr="docker"                                                                   # docker command
alias dri="docker images"                                                           # show docker images
alias drpl="docker pull"                                                            # pull docker image
alias drps="docker ps"                                                              # show docker containers
alias drpu="docker push"                                                            # push docker image
alias drr="docker run"                                                              # run docker container
alias drs="docker search"                                                           # search docker image


# -----------------------------------------------------
# Network
# -----------------------------------------------------
# Basic Networking Commands
alias ipconfig="ip a"                                                               # Display all IP addresses
alias ipup="sudo dhclient"                                                          # Get a new IP via DHCP
alias ipdown="sudo dhclient -r"                                                     # Release current IP
alias netstat="ss -tulnp"                                                           # Show listening ports and connections
alias ports="sudo netstat -tulanp | grep LISTEN"                                    # Show open ports
alias ping="ping -c 5"                                                              # Send 5 ICMP echo requests
alias trace="traceroute"                                                            # Run traceroute
alias myip="curl ifconfig.me"                                                       # Get public IP address
alias pubip="dig +short myip.opendns.com @resolver1.opendns.com"                    # Alternative public IP
alias dnslookup="nslookup"                                                          # Query DNS records
alias whois="whois"                                                                 # Perform a WHOIS lookup
alias macvendor="sudo nmap --script mac-vendor"                                     # Discover MAC address vendor
# Wi-Fi and Network Interfaces
alias wifiup="nmcli radio wifi on"                                                  # Enable Wi-Fi
alias wifidown="nmcli radio wifi off"                                               # Disable Wi-Fi
alias wifilist="nmcli dev wifi list"                                                # List available Wi-Fi networks
alias wificonnect="nmcli dev wifi connect"                                          # Connect to a Wi-Fi network
alias wifidisconnect="nmcli dev disconnect wlan0"                                   # Disconnect from Wi-Fi
alias netinfo="nmcli dev show"                                                      # Show detailed info for all network devices
alias ifup="sudo ifconfig wlan0 up"                                                 # Bring up wireless interface
alias ifdown="sudo ifconfig wlan0 down"                                             # Bring down wireless interface
alias ifrestart="sudo systemctl restart NetworkManager"                             # Restart NetworkManager
# DNS and Hosts
alias resolv="cat /etc/resolv.conf"                                                 # View DNS configuration
alias dnsflush="sudo resolvectl flush-caches"                                       # Flush DNS cache (systemd-resolved)
alias addhost="sudo nano /etc/hosts"                                                # Edit /etc/hosts file
alias dnstest="dig google.com"                                                      # Test DNS resolution
alias dnsperf="dig google.com +stats"                                               # Test DNS query performance
alias dnstrace="dig +trace google.com"                                              # Trace DNS query
# Networking Tools
alias sniff="sudo tcpdump -i any"                                                   # Capture network packets
alias pscan="sudo nmap -sS"                                                         # Perform a SYN scan with nmap
alias arp="arp -a"                                                                  # Display ARP table
alias netsp="iftop"                                                                 # Show network speed (requires iftop)
alias iperf="iperf3"                                                                # Run an iperf3 bandwidth test
alias speedtest="curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -"  # Run a speed test
alias netcon="nmcli connection show"                                                # List all network connections
alias connect="nmcli connection up"                                                 # Activate a network connection
alias disconnect="nmcli connection down"                                            # Deactivate a network connection
# Firewall and Security
alias fwstatus="sudo ufw status verbose"                                            # Check firewall status
alias fwallow="sudo ufw allow"                                                      # Allow a port/service in firewall
alias fwdeny="sudo ufw deny"                                                        # Deny a port/service in firewall
alias fwreload="sudo ufw reload"                                                    # Reload firewall rules
alias scanlocal="sudo nmap -sn 192.168.1.0/24"                                      # Scan local network
alias listconns="ss -s"                                                             # Show network socket statistics
alias tcpblock="iptables -A INPUT -p tcp --dport"                                   # Block TCP port
alias udpblock="iptables -A INPUT -p udp --dport"                                   # Block UDP port
# Public IP and Network Testing
alias checkip="curl -s ipinfo.io"                                                   # Display public IP and geo-info
alias googledns="ping 8.8.8.8 -c 5"                                                 # Test connection to Google DNS
alias speed="speedtest-cli"                                                         # Run a network speed test
alias latency="ping -c 5 1.1.1.1"                                                   # Test latency to Cloudflare's DNS
