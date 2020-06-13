#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/10.10.10.1/g' package/base-files/files/bin/config_generate

#移除不用软件包
rm -rf k3screenctrl package/lean
#添加额外软件包
git clone https://github.com/jefferymvp/luci-app-koolproxyR package/luci-app-koolproxyR
git clone https://github.com/yangsongli/luci-theme-atmaterial.git package/luci-theme-atmaterial
git clone https://github.com/xnxy2012/luci-app-passwall.git
git clone https://github.com/vernesong/OpenClash.git
