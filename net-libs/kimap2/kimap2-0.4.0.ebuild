# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

KFMIN=5.60.0
QTMIN=5.12.3
inherit ecm

DESCRIPTION="Library for interacting with IMAP servers - successor of kimap"
# SRC_URI="mirror://kde/unstable/${PN}/${PV}/src/${P}.tar.xz"
SRC_URI="https://github.com/kde/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
# EGIT_REPO_URI="https://github.com/kde/${PN}.git"
# EGIT_COMMIT="v${PV}"

LICENSE="LGPL-2+"
SLOT="5"
KEYWORDS="~amd64"

DEPEND="
	dev-libs/cyrus-sasl:2
	>=dev-qt/qtnetwork-${QTMIN}:5[ssl]
	>=kde-apps/kmime-19.04.3:5
	>=kde-frameworks/kcodecs-${KFMIN}:5
	>=kde-frameworks/kcoreaddons-${KFMIN}:5
"
RDEPEND="${DEPEND}"

RESTRICT+=" test"
