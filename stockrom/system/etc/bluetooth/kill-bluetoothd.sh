#!/system/bin/sh


bluetooth_pid=$(getprop service.brcm.bt.bluetoothd_pid)
kill -USR1 $bluetooth_pid
