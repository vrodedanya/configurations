#!/usr/bin/bash

sudo systemctl restart bluetooth
echo Bluetooth system restart
sleep 5
bluetoothctl connect 00:1B:66:84:CE:F5
echo Connecting...
sleep 5
INDEX=$(pacmd list-cards | grep index | tail -n 1 | awk '{print $2}')
echo $INDEX
pacmd set-card-profile $INDEX a2dp_sink_aptx

exit 0
