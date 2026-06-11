# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

HOMEPAGE="https://github.com/Next-Level-Software-Studio/Guard-for-Bit-OS"
SRC_URI="https://github.com/Next-Level-Software-Studio/Guard-for-Bit-OS/archive/refs/tags/v\${PV}.tar.gz -> \${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE="clamav doc nftables rar selinux"

RDEPEND="dev-lang/python
    dev-python/python-magic
    clamav? ( 
        rar? ( app-antivirus/clamav[clamapp,clamsubmit,metadata-analysis-api,rar] )
        !rar? ( app-antivirus/clamav[clamapp,clamsubmit,metadata-analysis-api] )
    )
    nftables? ( net-firewall/nftables[python] )
    clamav? ( selinux? ( sec-policy/selinux-clamav ) )"
DEPEND="${RDEPEND}"