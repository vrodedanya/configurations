#!/usr/bin/bash

echo Bluetooth system restart
sudo systemctl restart bluetooth
sleep 3
echo Connecting...

bluetoothctl connect 00:1B:66:84:CE:F5
sleep 3

INDEX=$(pacmd list-cards | grep index | tail -n 1 | awk '{print $2}')
pacmd set-card-profile $INDEX a2dp_sink_aptx

exit 0
