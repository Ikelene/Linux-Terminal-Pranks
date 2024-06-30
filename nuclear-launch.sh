# Text colors
clear
echo "Preparing format codes."
echo "=_________________________"
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
BLUE='\e[34m'
MAGENTA='\e[35m'
CYAN='\e[36m'
WHITE='\e[37m'
sleep 2
clear
echo -e "${YELLOW}Preparing format codes.."
echo -e "${MAGENTA}=======___________________"
# Background colors
BG_RED='\e[41m'
BG_GREEN='\e[42m'
BG_YELLOW='\e[43m'
BG_BLUE='\e[44m'
BG_MAGENTA='\e[45m'
BG_CYAN='\e[46m'
BG_WHITE='\e[47m'
sleep 1
clear
echo -e "${WHITE}${BG_YELLOW}Preparing format codes..."
echo -e "${WHITE}${BG_MAGENTA}===============___________"
# Text effects
BOLD='\e[1m'
UNDERLINE='\e[4m'
sleep 2
clear
echo -e "${WHITE}${BG_YELLOW}${BOLD}Setting up connections..."
echo -e "${WHITE}${BG_MAGENTA}======================____\r[0m"
sleep 3
# Reset text to default
RESET='\e[0m'
clear
echo -e "${RESET}${BG_MAGENTA}${WHITE}${RESET}Accessing the government launch computers..."
sleep 5
clear
echo -e "Access ${GREEN}${BOLD}Granted${RESET}."
sleep 1
echo -e "${BLUE}Connected${RESET} via ssh terminal."
sleep 1
echo -e "bitdefender.file.access.denied = ${RED}true${RESET}"
sleep 1
echo -e "bitdefender.hack.granted ${YELLOW}Enabled${RESET}"
sleep 2
echo -e "bitdefender.file.access.granted = ${GREEN}true${RESET}"
sleep 1
echo -e "codefinder.activate.script = ${GREEN}true${RESET}"
sleep 2
echo "Finding Nuclear Launch Codes"
sleep 0.5
echo "script.parent.bypass.running = true"
sleep 10
echo -e "${GREEN}${BOLD}${UNDERLINE}Codes found!${RESET}"
sleep 0.5
# Function to generate a random 10-digit number
generate_random_number() {
  echo $((RANDOM % 9000000000 + 1000000000))
}

# Generate five random 10-digit numbers
random_numbers=()
for ((i=0; i<5; i++)); do
  number=""
  for ((j=0; j<10; j++)); do
    digit=$((RANDOM % 10))
    number="${number}${digit}"
  done
  random_numbers+=("$number")
done

# Convert the numbers to a single string for easy comparison
correct_sequence=$(printf "%s" "${random_numbers[@]}")

echo "Nuclear Launch codes found!"
for i in "${!random_numbers[@]}"; do
  echo "$((i+1)): ${random_numbers[i]}"
done

read -p "Enter the numbers in order (without spaces): " user_input

if [ "$user_input" == "$correct_sequence" -o "script.parent.bypass.running = true" ]; then
  sleep 3
if [ "$user_input" == "script.parent.bypass.running = true" ]; then
echo -e "${YELLOW}Launch Codes Bypassed${RESET}"
fi
echo "Launch Codes accepted."
  # Continue with the rest of your script here
echo "Please enter a launch destination."
read destination
echo "Please select the nuclear explosion strength (1/100 Mile Radius)"
read strength
echo "Please select the amount of nukes"
read amount
clear
echo "Please confirm launch with enter."
echo "===================================================="
echo -e "Destination: ${BOLD}${BG_BLUE}$destination${RESET} | Explosion Strength: ${BOLD}${BG_RED}$strength${RESET} Mile Radius | Amount: ${BOLD}${BG_YELLOW}$amount${RESET}"
read confirm
echo -e "${BOLD}${UNDERLINE}${GREEN}Launch confirmed.${RESET}"
echo "========="
echo -e "${BG_CYAN}Preparing${RESET} | Countdown | Launching | In-Flight | Detonating | Detonated"
echo "========="
read stop
if [ "$stop" == "stop" ]; then
echo -e "${RED}Terminating nuclear bombs...${RESET}"
sleep 10
echo -e "${GREEN}${UNDERLINE}Terminate Signal Recived."
sleep 3
echo -e "${GREEN}${UNDERLINE}Termination Confirmed. Rockets disarmed and no longer in flight."
sleep 1
echo -e "${BLUE}${BOLD}Authoritys have been dispatched to retrive rockets."
read enter
fi
clear
echo "           ==========="
echo -e "Preparing | ${BG_CYAN}Countdown${RESET} | Launching | In-Flight | Detonating | Detonated"
echo "           ==========="
echo "10"
sleep 1
echo "9"
sleep 1
echo "8"
sleep 1
echo "7"
sleep 1
echo "6"
sleep 1
echo "5"
sleep 1
echo "4"
sleep 1
echo "3"
sleep 1
echo "2"
sleep 1
echo "1"
sleep 3
clear
echo "                       ==========="
echo -e "Preparing | Countdown | ${BG_CYAN}Launching${RESET} | In-Flight | Detonating | Detonated"
echo "                       ==========="
read stop
if [ "$stop" == "stop" ]; then
echo -e "${RED}Terminating nuclear bombs...${RESET}"
sleep 10
echo -e "${GREEN}${UNDERLINE}Terminate Signal Recived."
sleep 3
echo -e "${GREEN}${UNDERLINE}Termination Confirmed. Rockets disarmed and no longer in flight."
sleep 1
echo -e "${BLUE}${BOLD}Authoritys have been dispatched to retrive rockets."
read enter
fi
clear
echo "                                   ==========="
echo -e "Preparing | Countdown | Launching | ${BG_CYAN}In-Flight${RESET} | Detonating | Detonated"
echo "                                   ==========="
read stop
if [ "$stop" == "stop" ]; then
echo -e "${RED}Terminating nuclear bombs...${RESET}"
sleep 10
echo -e "${GREEN}${UNDERLINE}Terminate Signal Recived."
sleep 3
echo -e "${GREEN}${UNDERLINE}Termination Confirmed. Rockets disarmed and no longer in flight."
sleep 1
echo -e "${BLUE}${BOLD}Authoritys have been dispatched to retrive rockets."
read enter
fi
clear
echo "                                               ============"
echo -e "Preparing | Countdown | Launching | In-Flight | ${BG_CYAN}Detonating${RESET} | Detonated"
echo "                                               ============"
read stop
if [ "$stop" == "stop" ]; then
echo -e "${RED}Terminating nuclear bombs...${RESET}"
sleep 10
echo -e "${GREEN}${UNDERLINE}Terminate Signal Recived."
sleep 3
echo -e "${RED}${UNDERLINE}[ERROR_CDE] 239: Termination ${BOLD}Failed.${RESET}${RED}${UNDERLINE} Rockets already detonating.${RESET}"
read enter
fi
clear
echo "                                                            =========="
echo -e "${WHITE}Preparing | Countdown | Launching | In-Flight | Detonating | ${BG_RED}Detonated${RESET}"
echo "                                                            =========="
read stop
if [ "$stop" == "stop" ]; then
echo -e "${RED}Terminating nuclear bombs...${RESET}"
sleep 15
echo -e "${RED}${UNDERLINE}[ERROR_CDE] 23: Terminate Signal ${BOLD}not${RESET}${RED}${UNDERLINE} Recived.${RESET}"
sleep 3
echo -e "${RED}${UNDERLINE}[ERROR_CDE] 195: Termination ${BOLD}Failed.${RESET}${RED}${UNDERLINE} Rockets are offline and not reciving.${RESET}"
read enter
fi
echo "$amount nuke(s) has/have been detonated in $destination with a blast radius of $strength."
echo "Your access to this panel has been removed. This terminal will now reset."
sleep 5
echo -e "${RED}${BOLD}${UNDERLINE}Terminal Reset. Have a nice day.${RESET}"
read enter
clear

else
  echo "Sorry, you entered the wrong sequence. Exiting the script."
fi

sleep 3
