# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit linux-mod git-r3
DESCRIPTION="mygpio driver"
HOMEPAGE="http://github.com/miofferg/"

LICENSE="GPL-2"
SLOT="0"
IUSE=""

MODULE_NAMES="mygpio(gpio:${S}:${S})"
BUILD_TARGETS="all"
DEPEND="virtual/linux-sources"

src_compile() {
	KERNEL_DIR="/lib/modules/${KV_FULL}/build" linux-mod_src_compile
}

src_install() {
	linux-mod_src_install
}