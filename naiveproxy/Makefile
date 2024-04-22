include $(TOPDIR)/rules.mk

PKG_NAME:=naiveproxy
PKG_VERSION:=124.0.6367.54-1
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
  PKG_HASH:=51dfb0c8c9f6508f784666e1340cb7e5e9155b48bb9622e358720d49356909d9
else ifeq ($(ARCH_PREBUILT),aarch64_cortex-a72)
  PKG_HASH:=912447b9500a7ad007d77fe62cdb7f4cf75c5d2af89aa51bf199cce9b22bd3c6
else ifeq ($(ARCH_PREBUILT),aarch64_generic)
  PKG_HASH:=a03b16122fbddc6e7424b64c4e12118f2d063769f6670c2e9387b1454b696864
else ifeq ($(ARCH_PREBUILT),arm_arm1176jzf-s_vfp)
  PKG_HASH:=505e3cfb7e7156289ceb95502ca1b01795eb8228528abc8155b1b4e5277522c9
else ifeq ($(ARCH_PREBUILT),arm_arm926ej-s)
  PKG_HASH:=bbcd03e8ffecc0d4ad261cb6854ccdcdcf9b1ba6b0788e652d8c513b03199986
else ifeq ($(ARCH_PREBUILT),arm_cortex-a15_neon-vfpv4)
  PKG_HASH:=b8ec7f5029fd91a2f430417f7bc4b5f9b965e81a51aa7e5dbed4f59ad7b2dc45
else ifeq ($(ARCH_PREBUILT),arm_cortex-a5_vfpv4)
  PKG_HASH:=bb825fc79eb72572db90e88132ec02b1c52bccb9091901e663c7a1ca90104a2e
else ifeq ($(ARCH_PREBUILT),arm_cortex-a7)
  PKG_HASH:=8536be28856052647da057620f4ef8919b8d6b6ed55c46288aea5ca7413743f2
else ifeq ($(ARCH_PREBUILT),arm_cortex-a7_neon-vfpv4)
  PKG_HASH:=b76544e08fadf449bcb35f81d8665f44fe64942a1c6ba0deb9c4ef83e26125a4
else ifeq ($(ARCH_PREBUILT),arm_cortex-a7_vfpv4)
  PKG_HASH:=7e377fc234175aecec32f492c96930e5ada3dfca2ab483bf8e8f7598eb50ac87
else ifeq ($(ARCH_PREBUILT),arm_cortex-a8_vfpv3)
  PKG_HASH:=0b65709e1fd1a7254eaef091d688544170e4a1991e4236ddbf40946d744b4fa1
else ifeq ($(ARCH_PREBUILT),arm_cortex-a9)
  PKG_HASH:=0ce2863701c7e66304c7b29df34a9612efb5a9f40f6ead714aaf2d8d52f3611c
else ifeq ($(ARCH_PREBUILT),arm_cortex-a9_neon)
  PKG_HASH:=e4c85145f1d6c1484859336690d70a68d7400e3438fb55ca2edfb4fca3c9cbdc
else ifeq ($(ARCH_PREBUILT),arm_cortex-a9_vfpv3-d16)
  PKG_HASH:=ab5d8131bed3f743aacd3a6d5141e43969bb24e5db21423a315b21647ea58365
else ifeq ($(ARCH_PREBUILT),arm_mpcore)
  PKG_HASH:=4b4785c8b040fb4a38f8502deeeece82cb88cdb4e2a7cb7ab1ba0d946b9b6acf
else ifeq ($(ARCH_PREBUILT),arm_xscale)
  PKG_HASH:=6e08f6f47e4a38aaa1ebfb06a1c7bdb7ca8c7ebe0430597aebe83153c74004ea
else ifeq ($(ARCH_PREBUILT),mipsel_24kc)
  PKG_HASH:=b0d5d6e47344ce57014dfb3bd0997e367bfffbf87511e5e4a867bee159a918d5
else ifeq ($(ARCH_PREBUILT),mipsel_mips32)
  PKG_HASH:=a6c6000dc71ec10b4847805cac13aed5372b9c0a5c65a82ae70440c8c3d54edc
else ifeq ($(ARCH_PREBUILT),riscv64)
  PKG_HASH:=4854aac1ac8b486ec0e99b02db16a76ad8308032ef18f5ab6959dc923927b488
else ifeq ($(ARCH_PREBUILT),x86)
  PKG_HASH:=3b9c3a8a7e9bf8ab0af847fda7b8e6d5823ca97e2c74e7b87a1ec858914720e1
else ifeq ($(ARCH_PREBUILT),x86_64)
  PKG_HASH:=82e7024fb7d0d67a6cbf2ccfc7cee1f5669c50c6e6ddb89ff630f5a9c2540c2d
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
