# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
#

EAPI=5

inherit toolchain-funcs git-r3

DESCRIPTION="ledtest program"
EGIT_REPO_URI="git://github.com/miofferg/ledtest.git"
EGIT_COMMIT="919e9912f6f0729db16b2cdcdf32c610b3c7567d"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

src_compile() {
	einfo "$(tc-getCC) ${LDFLAGS} ${CFLAGS} -o ${PN} ${PN}.c"
	$(tc-getCC) ${LDFLAGS} ${CFLAGS} -o ${PN} ${PN}.c || die
}

src_install() {
	dobin ${PN} || die
}
