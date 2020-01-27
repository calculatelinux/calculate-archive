# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="Gfxboot themes for Calculate Linux"
HOMEPAGE="http://www.calculate-linux.org/packages/media-gfx/gfxboot-themes-calculate"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

SRC_URI="ftp://ftp.calculate-linux.org/calculate/themes/gfxboot/gfxboot-themes-calculate-${PV}.tar.bz2
	http://mirror.yandex.ru/calculate/themes/gfxboot/gfxboot-themes-calculate-${PV}.tar.bz2"

RDEPEND="media-gfx/gfxboot"

DEPEND="${RDEPEND}"

src_compile() {
	emake -j1
}

src_install() {
	dodir /usr/share/themes/gfxboot-themes-calculate
	insinto /usr/share/themes/gfxboot-themes-calculate
	doins -r $(find install/* | grep -v -e install/log -e bootlogo.tar.gz)
}
