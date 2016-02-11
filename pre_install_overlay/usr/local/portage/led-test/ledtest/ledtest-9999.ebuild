# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit toolchain-funcs

DESCRIPTION="ledtest program"
HOMEPAGE="http://github.com/miofferg/"
SRC_URI="https://raw.githubusercontent.com/miofferg/meta-iotrpi/master/recipes-core/led-test/files/ledtest.c"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

S="${WORKDIR}"

src_unpack() {
	cp "${DISTDIR}"/${A} "${WORKDIR}"/
}

src_compile() {
	einfo "$(tc-getCC) ${LDFLAGS} ${CFLAGS} -o ${PN} ${P}.c"
	$(tc-getCC) ${LDFLAGS} ${CFLAGS} -o ${PN} ${P}.c || die
}

src_install() {
	dobin ${PN} || die
}