#!/bin/bash

rm /etc/systemd/system/Aiko-Server.service -f
wget -q -N --no-check-certificate -O /etc/systemd/system/Aiko-Server.service https://github.com/AikoPanel/Aiko-Server-script/raw/master/Aiko-Server.service
#cp -f Aiko-Server.service /etc/systemd/system/
systemctl daemon-reload

aiko-server update
aiko-server restart