# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=(python2_7)

inherit distutils-r1 eutils

SRC_URI="ftp://ftp.calculate-linux.org/calculate/source/calculate2/${PN}/${P}.tar.bz2
	http://mirror.yandex.ru/calculate/source/calculate2/${PN}/${P}.tar.bz2"

DESCRIPTION="The library for Calculate 2"
HOMEPAGE="http://www.calculate-linux.org/main/en/calculate2"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""
DEPEND="!<sys-apps/calculate-client-2.1.12
		!<sys-apps/calculate-server-2.1.11
		>=dev-lang/python-2.5.2
		>=dev-python/python-ldap-2.0[ssl]
		>=dev-python/pyxml-0.8"
RDEPEND="${DEPEND}"

src_unpack() {
	unpack "${A}"
	cd "${S}"

	# fix get ip and mac without ifconfig
	epatch "${FILESDIR}/calculate-lib-2.1.11-fix_getip.patch"

	# fix import xpath
	epatch "${FILESDIR}/calculate-lib-2.1.11-fix_xpath.patch"

	# fix iniparser
	epatch "${FILESDIR}/calculate-lib-2.1.11-fix_iniparser.patch"

	# fix dovecot restart
	epatch "${FILESDIR}/calculate-lib-2.1.11-dovecot_restart.patch"
}
