include $(TOPDIR)/rules.mk

PKG_NAME:=naiveproxy
PKG_VERSION:=130.0.6723.40-3
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
  PKG_HASH:=30adef7396d3354fe2b6538cb564ade56b8eff86dbb47a16770657e473c131c3
else ifeq ($(ARCH_PREBUILT),aarch64_cortex-a72)
  PKG_HASH:=653ad9d3bbadb98e6c8f7fab11c8b37030578e352b68a02b71603617f9bfd490
else ifeq ($(ARCH_PREBUILT),aarch64_generic)
  PKG_HASH:=aef67c07f1b03bf53f2c778ac39d1157ae45e7ddf4cdfeb6798954ffda39c790
else ifeq ($(ARCH_PREBUILT),arm_arm1176jzf-s_vfp)
  PKG_HASH:=3e5e7805ecf57758bf199702e9596bd3e1528d8a6300a28251264b185ae0491b
else ifeq ($(ARCH_PREBUILT),arm_arm926ej-s)
  PKG_HASH:=069eb3ec1a1a311ad4fe8087d0b4467d848572151b8058376c0b5ad3e1bcbf57
else ifeq ($(ARCH_PREBUILT),arm_cortex-a15_neon-vfpv4)
  PKG_HASH:=d53ff12f3b1fd537fae2773dc88e23e9366057f670fd91e90836ec7f1275c59d
else ifeq ($(ARCH_PREBUILT),arm_cortex-a5_vfpv4)
  PKG_HASH:=9bf1a224148b881173b4d2b2519d96189c5560e8bc1b2bad68faa87130a9a23d
else ifeq ($(ARCH_PREBUILT),arm_cortex-a7)
  PKG_HASH:=dcf45fa7eced007c10825e6858da04b06760e0b373e3132889c4e440014d4294
else ifeq ($(ARCH_PREBUILT),arm_cortex-a7_neon-vfpv4)
  PKG_HASH:=d72f952e5f1157e690cc82382ada6667c0804845f63717996ddc54427fd3c75d
else ifeq ($(ARCH_PREBUILT),arm_cortex-a7_vfpv4)
  PKG_HASH:=359f4379a137d897454e8abc28b09f2f71e06e97fb706b114f19ee3b6091cf3d
else ifeq ($(ARCH_PREBUILT),arm_cortex-a8_vfpv3)
  PKG_HASH:=916ce08b13d59cf01c57494d68a0fa5bfa69df2072b23c63f9486e8801c774a8
else ifeq ($(ARCH_PREBUILT),arm_cortex-a9)
  PKG_HASH:=69c66f7b075b6dd264a3b74ae0442e4b4fd3c9628b9235e4d967f6cf66d064cd
else ifeq ($(ARCH_PREBUILT),arm_cortex-a9_neon)
  PKG_HASH:=00e6cc606fdba831e83a28f2828aac948d63ae11976a54fc7cabc35122b42fa7
else ifeq ($(ARCH_PREBUILT),arm_cortex-a9_vfpv3-d16)
  PKG_HASH:=b2053d3f8660be6490e84723909c883ff7b1bc0304e3a9b8a2a7393630c71717
else ifeq ($(ARCH_PREBUILT),arm_mpcore)
  PKG_HASH:=c9559c7e2b91db0a0d6fd1a7d3c8ef62e3830671d976014e5d1c9a867df5f3e9
else ifeq ($(ARCH_PREBUILT),arm_xscale)
  PKG_HASH:=fc126eee72fbe4ec4471e0c885b4aa14f60325fc0d2f8772d967222285a8c168
else ifeq ($(ARCH_PREBUILT),mipsel_24kc)
  PKG_HASH:=06130fae387ad704cec012979075254d28fca293d29bd48455fd309c645a9aca
else ifeq ($(ARCH_PREBUILT),mipsel_mips32)
  PKG_HASH:=4cf32bce85b1ce231f43d301dc65cf40d5990172210520f35b37e0dc7802498e
else ifeq ($(ARCH_PREBUILT),riscv64)
  PKG_HASH:=fc120567c09b8bb0a1322a87ab022a7f7e6313dd82b528776f4383be1d1bcdc4
else ifeq ($(ARCH_PREBUILT),x86)
  PKG_HASH:=cc3db8d9a64af5ba81cc11545e9936b29a26f4617446f11dcc0152d979bd5d11
else ifeq ($(ARCH_PREBUILT),x86_64)
  PKG_HASH:=965cfa461d8218437e30f2b4553d9534fa6824321d91770465327f54dbbd23e3
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
