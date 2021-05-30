# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2021-present Shanti Gilbert (https://github.com/shantigilbert)

PKG_NAME="sonic2013"
PKG_VERSION="5111c509fa9ee1fa7420c3545a54bb2a742aaee2"
PKG_ARCH="any"
PKG_SITE="https://github.com/Rubberduckycooly/Sonic-1-2-2013-Decompilation"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain SDL2"
PKG_SHORTDESC="Sonic 1/2 (2013) Decompilation"
PKG_TOOLCHAIN="make"

makeinstall_target() {
mkdir -p $INSTALL/usr/local/bin
cp bin/sonic2013 $INSTALL/usr/local/bin

mkdir -p $INSTALL/usr/config/distribution/configs/sonic
cp $PKG_DIR/config/* $INSTALL/usr/config/distribution/configs/sonic
} 
