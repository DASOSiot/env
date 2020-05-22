# --------------------------------------------------------------------
# STEP 00: Enviromental Configuration.
# --------------------------------------------------------------------
echo ""
echo "STEP 00: Enviroment for Raspberry Pi 3B/3B+"
# STEP: 00. START.
# Swap File
fallocate -l 4G /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
echo "/swapfile swap swap defaults 0 0" >> /etc/fstab
# HOME Structure
sudo pirate
rm -rf ~/.dasos # Needed for Re-Install
mkdir ~/.dasos
mkdir ~/.dasos/sense
mkdir ~/.dasos/time
mkdir ~/.dasos/desk
sudo su
# OPT Structure
rm -rf /opt/vendor # Needed for Re-Install
mkdir /opt/vendor
rm -rf /opt/vendor/github # Needed for Re-Install
mkdir /opt/vendor/github
rm -rf /opt/vendor/github/dasosiot # Needed for Re-Install
mkdir /opt/vendor/github/dasosiot
cd /opt/vendor/github/dasosiot
git clone https://github.com/DASOSiot/desk.git
git clone https://github.com/DASOSiot/env.git
git clone https://github.com/DASOSiot/sense.git
git clone https://github.com/DASOSiot/time.git
# STEP 00: END.
echo ""
echo "STEP 00: done!"
# --------------------------------------------------------------------
