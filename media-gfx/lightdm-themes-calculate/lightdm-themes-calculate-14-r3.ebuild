# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="Lightdm themes for Calculate Linux"
HOMEPAGE="http://www.calculate-linux.org/packages/media-gfx/lightdm-themes-calculate"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

SRC_URI="ftp://ftp.calculate-linux.org/calculate/themes/lightdm/lightdm-calculate-${PVR}.tar.bz2
	http://mirror.yandex.ru/calculate/themes/lightdm/lightdm-calculate-${PVR}.tar.bz2"

RDEPEND="~media-gfx/dm-themes-calculate-${PV}
	x11-themes/gtk-engines-murrine
	x11-misc/lightdm-gtk-greeter"

DEPEND="${RDEPEND}"

src_install() {
	insinto /
	doins -r .
}
