# Psswall & SSRP 插件防炸上游备份

### 防止插件上游进行激进的改动，导致一些问题的出现，备份并按需同步可以确保编译时插件始终可用

```shell
rm -rf feeds/packages/net/{xray-core,v2ray-core,v2ray-geodata,sing-box}
git clone https://github.com/sbwml/openwrt_helloworld package/helloworld
```
