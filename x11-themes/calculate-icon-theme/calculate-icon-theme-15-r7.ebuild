# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit gnome2-utils

DESCRIPTION="Icons theme for Calculate Linux"
HOMEPAGE="http://www.calculate-linux.org/packages/x11-themes/calculate-icon-theme"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="+qt5"

SRC_URI="ftp://ftp.calculate-linux.org/calculate/themes/icon/icon-calculate-15-r4.tar.bz2
	http://mirror.yandex.ru/calculate/themes/icon/icon-calculate-15-r4.tar.bz2"

REQUIRED_USE=""

RDEPEND="|| ( 
		x11-themes/adwaita-icon-theme
		kde-plasma/breeze
		kde-frameworks/oxygen-icons
		x11-themes/elementary-icon-theme
		x11-themes/mate-icon-theme
	)
	qt5? ( dev-qt/qtsvg:5 )"

DEPEND="${RDEPEND}"

src_install() {
	insinto /
	doins -r .
}

pkg_preinst() {
	gnome2_icon_savelist
}

pkg_postinst() {
	gnome2_icon_cache_update
}

pkg_postrm() {
	gnome2_icon_cache_update
}

