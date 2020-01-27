# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="Calculate Linux theme for gensplash"
HOMEPAGE="http://www.calculate-linux.org/packages/media-gfx/calculate-splash-themes"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="+verbose +silent +silent-shutdown"

REQUIRED_USE="|| ( verbose silent silent-shutdown )"

SRC_URI="silent? ( 
		ftp://ftp.calculate-linux.org/calculate/themes/calculate/splash-silent-18.jpg -> ${PN}-silent-18.jpg
		http://mirror.yandex.ru/calculate/themes/calculate/splash-silent-18.jpg -> ${PN}-silent-18.jpg )
	verbose? (
		ftp://ftp.calculate-linux.org/calculate/themes/calculate/splash-verbose-18.jpg -> ${PN}-verbose-18.jpg
		http://mirror.yandex.ru/calculate/themes/calculate/splash-verbose-18.jpg -> ${PN}-verbose-18.jpg )
	silent-shutdown? (
		ftp://ftp.calculate-linux.org/calculate/themes/calculate/splash-shutdown-18-r1.jpg -> ${PN}-shutdown-18-r1.jpg
		http://mirror.yandex.ru/calculate/themes/calculate/splash-shutdown-18-r1.jpg -> ${PN}-shutdown-18-r1.jpg )"

DEPEND="media-gfx/splashutils
	media-fonts/droid
	!<sys-apps/calculate-utils-3.5.2.6"

# need for templates
RDEPEND="${DEPEND}
	media-gfx/imagemagick"

S="${WORKDIR}"

src_install() {
	insinto /usr/share/themes/Calculate/
	if use silent
	then
		newins "${DISTDIR}"/${PN}-silent-${PV}.jpg splash-silent.jpg
	fi
	if use silent-shutdown
	then
		newins "${DISTDIR}"/${PN}-shutdown-18-r1.jpg splash-shutdown.jpg
	fi
	if use verbose
	then
		newins "${DISTDIR}"/${PN}-verbose-${PV}.jpg splash-verbose.jpg
	fi
}

