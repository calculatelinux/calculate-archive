# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="Cinnamon theme for Calculate Linux"
HOMEPAGE="http://www.calculate-linux.org/packages/media-gfx/cinnamon-themes-calculate"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

SRC_URI="ftp://ftp.calculate-linux.org/calculate/themes/cinnamon/cinnamon-calculate-${PV}.tar.bz2
	http://mirror.yandex.ru/calculate/themes/cinnamon/cinnamon-calculate-${PV}.tar.bz2"

REQUIRED_USE=""

S="${WORKDIR}"

src_install() {
	insinto /
	doins -r .
}
