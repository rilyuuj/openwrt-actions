#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.123.254/g' package/base-files/files/bin/config_generate
# OpenClash for Luci
git clone https://github.com/vernesong/OpenClash package/OpenClash
./scripts/feeds update OpenClash
./scripts/feeds install OpenClash
# Kcptun client for Luci
git clone https://github.com/kuoruan/luci-app-kcptun.git package/luci-app-kcptun
./scripts/feeds update luci-app-kcptun
./scripts/feeds install luci-app-kcptun
