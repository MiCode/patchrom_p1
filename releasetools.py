import common
import edify_generator

def AddAssertions(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if ");" in edify.script[i] and ("ro.product.device" in edify.script[i] or "ro.build.product" in edify.script[i]):
            edify.script[i] = edify.script[i].replace(");", ' || getprop("ro.build.product") == "viva");')
            return

def RemovePartOfCust(info):
    extraCommand = """
run_program("/sbin/busybox", "mount", "-o,rw", "-t", "ext4", "/dev/block/platform/omap/omap_hsmmc.1/by-name/cust", "/cust");
run_program("/sbin/busybox", "rm", "/cust/hw/default/delapp", "-rf");
run_program("/sbin/busybox", "rm", "/cust/hw/default/wallpaper", "-rf");
run_program("/sbin/busybox", "umount", "/cust");
        """
    info.script.AppendExtra(extraCommand)
    return 

def FullOTA_InstallEnd(info):
    AddAssertions(info)
    RemovePartOfCust(info)
    return 

def IncrementalOTA_InstallEnd(info):
    AddAssertions(info)
    return
