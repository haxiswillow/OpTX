#========================================
# OpTX
# Developer : @_tio_mt_, @lorran, @dark
# Base : Haxis
#========================================
#!/system/bin/sh

# SWAP
echo $((4086*1024*1024)) > /sys/block/vnswap0/disksize
mkswap /dev/block/vnswap0
swapon /dev/block/vnswap0