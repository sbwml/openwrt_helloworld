#!/bin/bash

git clone https://github.com/xiaorouji/openwrt-passwall2 --depth=1
rm -rf luci-app-passwall2
mv openwrt-passwall2/luci-app-passwall2 .
rm -rf openwrt-passwall2
git add luci-app-passwall2
git commit luci-app-passwall2 -m "luci-app-passwall2: sync upstream"
