# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit linux-mod git-r3
DESCRIPTION="mygpio driver"
HOMEPAGE="http://github.com/miofferg/"

EGIT_REPO_URI="git://github.com/miofferg/mygpio.git"
EGIT_COMMIT="516903520fa30e159f152d33d85fd14436245d22"

LICENSE="GPL-2"
SLOT="0"
IUSE=""

MODULE_NAMES="mygpio(gpio:${S}:${S})"
BUILD_TARGETS="all"
DEPEND="virtual/linux-sources"

src_compile() {
	linux-mod_src_compile
}

src_install() {
	linux-mod_src_install
}