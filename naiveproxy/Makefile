include $(TOPDIR)/rules.mk

PKG_NAME:=naiveproxy
PKG_VERSION:=124.0.6367.54-3
PKG_RELEASE:=1

ARCH_PREBUILT:=$(ARCH_PACKAGES)

# intel 80386 & riscv64 & cortex-a76
ifeq ($(ARCH_PREBUILT),aarch64_cortex-a76)
  ARCH_PREBUILT:=aarch64_generic
else ifeq ($(ARCH_PREBUILT),i386_pentium-mmx)
  ARCH_PREBUILT:=x86
else ifeq ($(ARCH_PREBUILT),i386_pentium4)
  ARCH_PREBUILT:=x86
else ifeq ($(ARCH_PREBUILT),riscv64_riscv64)
  ARCH_PREBUILT:=riscv64
endif

PKG_SOURCE:=naiveproxy-v$(PKG_VERSION)-openwrt-$(ARCH_PREBUILT).tar.xz
PKG_SOURCE_URL:=https://github.com/klzgrad/naiveproxy/releases/download/v$(PKG_VERSION)/

ifeq ($(ARCH_PREBUILT),aarch64_cortex-a53)
  PKG_HASH:=fa701351d72622f8e5c923ec6f84d52522f3d17ff932e8255d79685dadaffeea
else ifeq ($(ARCH_PREBUILT),aarch64_cortex-a72)
  PKG_HASH:=a63e7f9f4906227c35066f6b499d2d27040537074411a554b8947683ca957494
else ifeq ($(ARCH_PREBUILT),aarch64_generic)
  PKG_HASH:=0c958abed366ed8512565a938dd68b1a5912d6e23992594ba1c922c68c9fc886
else ifeq ($(ARCH_PREBUILT),arm_arm1176jzf-s_vfp)
  PKG_HASH:=08ed4d458978b17280f75cb2af4b43dd8bad8d8b03900b2c8f258a9139b732f4
else ifeq ($(ARCH_PREBUILT),arm_arm926ej-s)
  PKG_HASH:=0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5
else ifeq ($(ARCH_PREBUILT),arm_cortex-a15_neon-vfpv4)
  PKG_HASH:=7a40998f17063901a80322fd5eff27c18dff6aef2ada4cc815495e5d38e83344
else ifeq ($(ARCH_PREBUILT),arm_cortex-a5_vfpv4)
  PKG_HASH:=1568a495ece17bcc65e304acdc4503634d22b217d94391c8e61d672b9389b635
else ifeq ($(ARCH_PREBUILT),arm_cortex-a7)
  PKG_HASH:=bcd5a0b8268a2a7df48741c89188fcfac4d4052d5d9e9eb151517a000bf6484f
else ifeq ($(ARCH_PREBUILT),arm_cortex-a7_neon-vfpv4)
  PKG_HASH:=baca96c953a19ccb119ac5a5e0ad77a3ef553a587ca1e4066c1da7ee8c5b90cc
else ifeq ($(ARCH_PREBUILT),arm_cortex-a7_vfpv4)
  PKG_HASH:=5279cc9a51bc4a6098a90ff2aac3a9039d4b9bf769ad44bccf6e370c84b829e6
else ifeq ($(ARCH_PREBUILT),arm_cortex-a8_vfpv3)
  PKG_HASH:=a17ba80e5f9d4acf2b675ac2c3a06ccf044461052d511a7b8b7a75934bc6f527
else ifeq ($(ARCH_PREBUILT),arm_cortex-a9)
  PKG_HASH:=2dd5d459f38d3008f90965c4a9419626842e14ac6ecbcd0fe44bd501ee3d9ca4
else ifeq ($(ARCH_PREBUILT),arm_cortex-a9_neon)
  PKG_HASH:=990bc577689817d75c3a57369951c944dc1e999574f365a31c3176ccbb2bd72e
else ifeq ($(ARCH_PREBUILT),arm_cortex-a9_vfpv3-d16)
  PKG_HASH:=9aa579bab55546ba7b6311455e39a249d21d182d46e9b1566f55e0e9da76d7d7
else ifeq ($(ARCH_PREBUILT),arm_mpcore)
  PKG_HASH:=02b7fe9783819211659b2a2463da5e0c27019943a2deabcddc81fb0e3cb2badb
else ifeq ($(ARCH_PREBUILT),arm_xscale)
  PKG_HASH:=8e03f4a4443240e9a8e792546fa349f5943ab833255690d69a02a92c609f30b5
else ifeq ($(ARCH_PREBUILT),mipsel_24kc)
  PKG_HASH:=d2434f502137b49054d0086c962109d57e4d211a41519029ce4daa75542fd6c5
else ifeq ($(ARCH_PREBUILT),mipsel_mips32)
  PKG_HASH:=3c64c36ec59269dfd08dfb3071bf385125455e35841ea45f14706ef23fd43f95
else ifeq ($(ARCH_PREBUILT),riscv64)
  PKG_HASH:=4de97287616a53a234b301ac43f89c587e0be3a21f9cc124c0d8211214b060e2
else ifeq ($(ARCH_PREBUILT),x86)
  PKG_HASH:=4c101f025825a7014b03e2e6988320fe3bf8fc93c41b874365525dd2018c16a8
else ifeq ($(ARCH_PREBUILT),x86_64)
  PKG_HASH:=c45668de3fe1e7bf4df6d0b1c65f0a12b99212b026853782a78f55e634c9814c
else
  PKG_HASH:=dummy
endif

PKG_LICENSE:=BSD 3-Clause
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=sbwml <admin@cooluc.com>

PKG_BUILD_DIR:=$(BUILD_DIR)/naiveproxy-v$(PKG_VERSION)-openwrt-$(ARCH_PACKAGES)

include $(INCLUDE_DIR)/package.mk

define Package/naiveproxy
  SECTION:=net
  CATEGORY:=Network
  SUBMENU:=Web Servers/Proxies
  TITLE:=Make a fortune quietly
  URL:=https://github.com/klzgrad/naiveproxy
  DEPENDS:=@(aarch64||arm||i386||mipsel||riscv64||x86_64) +libatomic
endef

define Package/naiveproxy/description
  NaïveProxy uses Chrome's network stack to camouflage traffic with strong
  censorship resistance and low detectability. Reusing Chrome's stack also
  ensures best practices in performance and security.
endef

define Package/naiveproxy/conffiles
/etc/config/naiveproxy
endef

define Build/Prepare
	$(TAR) --strip-components=1 -C $(PKG_BUILD_DIR) -xJf $(DL_DIR)/naiveproxy-v$(PKG_VERSION)-openwrt-$(ARCH_PREBUILT).tar.xz
endef

define Build/Compile
endef

define Package/naiveproxy/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/naive $(1)/usr/bin/naive
	$(INSTALL_DIR) $(1)/etc/config $(1)/etc/init.d
	$(INSTALL_CONF) $(CURDIR)/files/naiveproxy.config $(1)/etc/config/naiveproxy
	$(INSTALL_BIN) $(CURDIR)/files/naiveproxy.init $(1)/etc/init.d/naiveproxy
endef

$(eval $(call BuildPackage,naiveproxy))
