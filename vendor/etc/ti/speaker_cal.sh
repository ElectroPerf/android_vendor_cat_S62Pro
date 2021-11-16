echo ============ clear cal ===================================
rm /mnt/vendor/persist/ti/tas2557_cal.bin
rm /mnt/vendor/persist/ti/tas2557_cal.txt

mkdir /mnt/vendor/persist/ti
echo ============ Speaker cal - ti cal start ==============
factorytest -t $1 -c /vendor/etc/ti/tas2557_s62.ftcfg

echo ============ Speaker cal - ti cal stop ===============

