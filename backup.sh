#!/usr/bin/bash
now=$(date +"%m-%d-%Y")


# Sending Stopping notification

/home/ubuntu/Scripts/BashDiscord/discord.sh --text "@everyone Valheim Server stopping in 5 minutes."

sleep 5m

# Stop the Service
systemctl stop valheimserver.service

# Create the Backup
cp /home/steam/.config/unity3d/IronGate/Valheim/worlds/Charlie.db /home/steam/WorldBackups/Charlie.db-${now}

cp /home/steam/.config/unity3d/IronGate/Valheim/worlds/Charlie.fwl /home/steam/WorldBackups/Charlie.fwl-${now}


# Start the Service
systemctl start valheimserver.service

sleep 5m
/home/ubuntu/Scripts/BashDiscord/discord.sh --text "Valheim Server has been restarted."
