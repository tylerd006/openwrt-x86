#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
# Add a feed source
# sed -i &#39;$a src-git lienol https://github.com/Lienol/openwrt-package&#39; feeds.conf.default
# sed -i &#39;$a src-git hwfuture https://github.com/hongweifuture/openwrt-packages&#39; feeds.conf.default
# sed -i &#39;$a src-git pwdep https://github.com/hongweifuture/pwdep.git&#39; feeds.conf.default
/scripts/feeds update -a && ./scripts/feeds install -a
