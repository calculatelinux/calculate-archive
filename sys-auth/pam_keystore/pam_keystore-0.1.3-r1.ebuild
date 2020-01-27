# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit pam

DESCRIPTION="Keeps a login and the password the user in the kernel"
HOMEPAGE="http://www.calculate-linux.org/main/en/pam_keystore"
SRC_URI="ftp://ftp.calculate-linux.org/calculate/source/${PN}/${P}.tar.bz2
	http://mirror.yandex.ru/calculate/source/${PN}/${P}.tar.bz2"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""
DEPEND=">=sys-apps/keyutils-1.1"
RDEPEND="${DEPEND}"

src_compile() {
	make CFLAGS="-Wall ${CFLAGS}" || die
}

src_install() {
	dopammod pam_keystore.so
}
