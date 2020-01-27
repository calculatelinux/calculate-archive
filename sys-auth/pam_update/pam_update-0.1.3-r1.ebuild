# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit pam

DESCRIPTION="System authentification update checkup tool"
HOMEPAGE="http://www.calculate-linux.org/main/en/calculate2"
SRC_URI="ftp://ftp.calculate-linux.org/calculate/source/${PN}/${P}.tar.bz2
	http://mirror.yandex.ru/calculate/source/${PN}/${P}.tar.bz2"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""
DEPEND=""
RDEPEND="${DEPEND} !<sys-apps/calculate-utils-3.5.0_alpha38"

src_compile() {
	make CFLAGS="-Wall ${CFLAGS}" || die
}

src_install() {
	dopammod pam_update.so
}
