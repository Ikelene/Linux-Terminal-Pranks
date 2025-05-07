BLUE='\033[0;34m'
RED='\033[0;31m'
GREEN='\033[1;32m'
NC='\033[0m'
echo "Loading!"
echo "PC Name"
read pcname
echo "User Name"
read name
echo "Memory"
read mem
echo "RAM"
read ram
echo "OS"
read os
echo "CPU"
read cpu
echo "OS Type"
read ostype
echo "chrom"
read chrom
echo "Graphics Card"
read gpu
echo "Manu"
read manu
echo "Terminal Setup?"
read term
clear

#!/bin/bash

# Function to display a progress bar
display_progress_bar() {
    local total_steps=$1
    local progress=0
    local bar=""

    echo -n -e "${BLUE}[--------------------] 0% ${NC}"

    while [ $progress -le $total_steps ]; do
        let filled_slots=progress*20/total_steps
        bar=""

        for ((i=0; i<$filled_slots; i++)); do
            bar="${bar}#"
        done

        for ((i=filled_slots; i<20; i++)); do
            bar="${bar}-"
        done

        let percentage=progress*100/total_steps
        echo -ne "\r[${bar}] ${percentage}% "

        sleep 0.1
        let progress++
    done

    echo
}

# Task 1
echo "Setting up virtual enviroment..."
display_progress_bar 80

# Task 2
echo "Downloading resources..."
display_progress_bar 50

# Task 3
echo "Starting Script..."
display_progress_bar 25

echo -e "${BLUE}Loading complete.${NC}"

echo -e "${BLUE}[PChack]: ${NC}Enter the ip address of the device you want to connect to:"
read ip
echo -e -ne "${BLUE}[PChack]: ${NC}Connecting to $ip.  \r"
sleep 1
echo -e -ne "${BLUE}[PChack]: ${NC}Connecting to $ip.. \r"
sleep 1
echo -e -ne "${BLUE}[PChack]: ${NC}Connecting to $ip...\r"
sleep 1
echo -e -ne "${BLUE}[PChack]: ${NC}Connecting to $ip.\r"
sleep 1
echo -e -ne "${BLUE}[PChack]: ${NC}Connecting to $ip..\r"
sleep 1
echo -e -ne "${BLUE}[PChack]: ${NC}Connecting to $ip...\r"
echo -e "${BLUE}[PChack]: ${NC}Connected!"
sleep 1
counter=$(($counter-1))
while [ $counter = 5 ]; do
echo -e -n "${BLUE}[PChack]: ${NC}$ip is asking for a password. Bypassing.  \r"
sleep 1
echo -e -n "${BLUE}[PChack]: ${NC}$ip is asking for a password. Bypassing.. \r"
sleep 1
echo -e -n "${BLUE}[PChack]: ${NC}$ip is asking for a password. Bypassing...\r"
sleep 1
counter=$(($counter-1))
done
echo -e "${BLUE}[PChack]:${NC} Connected!"
sleep 1
if [[ $term = no ]]
then
  tempvm=yes
  echo -e "${BLUE}[PChack]:${NC} Linux is not setup on this ChromeOS Device! Please wait while we setup and configure a temp linux vm..."
  display_progress_bar 35
  echo -e "${BLUE}[PChack]:${NC} Almost done..."
  sleep 5
  echo -e "${BLUE}[PChack]:${NC} Done!"
else
  echo -e "${BLUE}[PChack:${NC} Logging into terminal..."
fi
if [[ $os = "Linux" ]]
then
  cmdline="${GREEN}$name@$ostype${NC}:${BLUE}~${NC}$"
else
  if [[ $os = "Windows" ]]
  then
    cmdline="C:/Windows/users/$name>"
  else
    echo "$os does not allow terminal! Cannot run commands."
    echo "Press ENTER"
    read enter
    exit
  fi
fi
echo -e -n "$cmdline "
read command
echo "$command: Getting system info..."
sleep 1
echo -e "Username: $name"
echo -e "Device name: $pcname"
echo -e "Device Manufacturer: $manu"
echo -e "Memory: $mem"
echo -e "Random access memory: $ram"
echo -e "Operating System: $chrom"
echo -e "CPU: $cpu"
echo -e  "GPU: $gpu"
echo -e -n "$cmdline "
read command
echo -e "${GREEN}exiledshade_0@penguin${NC}:${BLUE}~${NC}$ "
read command
if [[ $tempvm = "yes" ]]
then
  echo "Deleting temp Linux terminal files..."
  sleep 2
  echo "Done!"
fi
echo -e "$command: ${BLUE}Closing connection${NC}"
