# Actions to do after clear installation of Proxmox VE on new host

If Proxmox subscription is bought Action 1. should be skipped

1. Set up the repositories \[GUI]
    1. Go to host->Updates->Repositories
    2. Disable repositories that have 'enterprise' word
    3. Add new repository 'No subscription'
    4. Reload
2. Update the packages and the system
    1. Go to the host shell
    2. Do `apt update` to update te packages lists
    3. Do `apt upgrade -y && apt dist upgrade -y` to update the packages and the system 
    4. Refresh the page
3. Add Node sensor readings view
    1. Install lm-sensors `apt install lm-sensors`
    2. Configure lm-sensors `sensors-detect`
    3. Download the script from github repository [Meliox/PVE-mods](https://github.com/Meliox/PVE-mods/tree/main) `wget https://raw.githubusercontent.com/Meliox/PVE-mods/refs/heads/main/legacy-scripts/pve-mod-gui-sensors.sh` (better use commands from the repository to make sure it is up to date)
    4. Run the script which modifies the dashboard to include sensors data `bash pve-mod-gui-sensors.sh install`