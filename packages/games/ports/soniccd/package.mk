# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2021-present Shanti Gilbert (https://github.com/shantigilbert)

PKG_NAME="soniccd"
PKG_VERSION="e1ffe4f0bbe5cdf3be2d232258d5c03a8804e378"
PKG_ARCH="any"
PKG_SITE="https://github.com/Rubberduckycooly/Sonic-CD-11-Decompilation"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain SDL2 libtheora"
PKG_SHORTDESC="A Full Decompilation of Sonic CD 2011"
PKG_TOOLCHAIN="make"

makeinstall_target() {
mkdir -p $INSTALL/usr/local/bin
cp bin/soniccd $INSTALL/usr/local/bin

mkdir -p $INSTALL/usr/config/distribution/configs/sonic
cp $PKG_DIR/config/* $INSTALL/usr/config/distribution/configs/sonic
} 
