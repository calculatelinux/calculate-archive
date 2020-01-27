# Copyright 2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="Plasma theme for Calculate Linux"
HOMEPAGE="http://www.calculate-linux.org/packages/media-gfx/plasma-themes-calculate"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

SRC_URI="ftp://ftp.calculate-linux.org/calculate/themes/plasma/plasma-calculate-${PV}.tar.bz2
	http://mirror.yandex.ru/calculate/themes/plasma/plasma-calculate-${PV}.tar.bz2"


RDEPEND="media-gfx/dm-themes-calculate"

DEPEND="${RDEPEND}"

src_install() {
	insinto /
	doins -r .
}
