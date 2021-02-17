#!/usr/bin/bash
now=$(date +"%m-%d-%Y")
webhook="NULL"

# Sending Stopping notification
message1 = "Valheim Server stopping in 5 minutes."
message2 = "Valheim Server has been restarted."
/home/ubuntu/Scripts/BashDiscord/discord.sh --webhook-url=$webhook --username "Odin" --text $message1

sleep 5m

# Stop the Service
systemctl stop valheimserver.service

# Create the Backup
cp /home/steam/.config/unity3d/IronGate/Valheim/worlds/Charlie.db /home/steam/WorldBackups/Charlie.db-${now}

cp /home/steam/.config/unity3d/IronGate/Valheim/worlds/Charlie.fwl /home/steam/WorldBackups/Charlie.fwl-${now}


# Start the Service
systemctl start valheimserver.service

sleep 5m
/home/ubuntu/Scripts/BashDiscord/discord.sh --webhook-url=$webhook --username "Odin" --text $message2
