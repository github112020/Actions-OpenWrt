#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.123.99/g' package/base-files/files/bin/config_generate

# 魔改 SSRP+
git clone https://github.com/fw876/helloworld.git package/helloworld
#git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/helloworld

# 刷新&安装源
./scripts/feeds update -a
./scripts/feeds install -a
