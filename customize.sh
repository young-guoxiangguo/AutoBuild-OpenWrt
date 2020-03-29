#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/10.10.13.203/g' package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/net203/g' package/base-files/files/bin/config_generate
sed -i "s/set network\.\$1\.proto='static'/set network.\$1.proto='static'\nset network.\$1.gateway='10.10.13.12'\nset network.\$1.dns='114.114.114.114 223.5.5.5'\n/g" package/base-files/files/bin/config_generate
