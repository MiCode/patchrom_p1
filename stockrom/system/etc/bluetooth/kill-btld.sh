#!/system/bin/sh

btld_pid=$(getprop service.brcm.bt.btld_pid)
kill -USR1 $btld_pid
