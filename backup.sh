#!/usr/bin/bash
now=$(date +"%m-%d-%Y")



# Stop the Service
systemctl stop valheimserver.service

# Create the Backup
cp /home/steam/.config/unity3d/IronGate/Valheim/worlds/Charlie.db /home/steam/WorldBackups/Charlie.db-${now}

cp /home/steam/.config/unity3d/IronGate/Valheim/worlds/Charlie.fwl /home/steam/WorldBackups/Charlie.fwl-${now}


# Start the Service
