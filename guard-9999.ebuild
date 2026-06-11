# Copyright 1999-2026 Gentoo Authors
# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

HOMEPAGE="https://github.com/Next-Level-Software-Studio/Guard-for-Bit-OS"
SRC_URI="https://github.com/Next-Level-Software-Studio/Guard-for-Bit-OS/archive/refs/tags/v\${PV}.tar.gz -> \${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE="audit bzip2 clamav doc nftables rar selinux split-usr xml"

RDEPEND="dev-lang/python
    dev-python/python-magic
    !net-firewall/ufw
    audit? ( sys-process/audit )
    split-usr? ( sys-process/audit[split-usr] )
    clamav? ( 
        rar? ( 
            xml? ( 
                bzip2? ( app-antivirus/clamav[bzip2,clamapp,clamsubmit,iconv,metadata-analysis-api,rar,system-mspack,xml] )
                !bzip2? ( app-antivirus/clamav[clamapp,clamsubmit,iconv,metadata-analysis-api,rar,system-mspack,xml] )
            )
            !xml? ( 
                bzip2? ( app-antivirus/clamav[bzip2,clamapp,clamsubmit,iconv,metadata-analysis-api,rar,system-mspack] )
                !bzip2? ( app-antivirus/clamav[clamapp,clamsubmit,iconv,metadata-analysis-api,rar,system-mspack] )
            )
        )
        !rar? ( 
            xml? ( 
                bzip2? ( app-antivirus/clamav[bzip2,clamapp,clamsubmit,iconv,metadata-analysis-api,system-mspack,xml] )
                !bzip2? ( app-antivirus/clamav[clamapp,clamsubmit,iconv,metadata-analysis-api,system-mspack,xml] )
            )
            !xml? ( 
                bzip2? ( app-antivirus/clamav[bzip2,clamapp,clamsubmit,iconv,metadata-analysis-api,system-mspack] )
                !bzip2? ( app-antivirus/clamav[clamapp,clamsubmit,iconv,metadata-analysis-api,system-mspack] )
            )
        )
    )
    nftables? ( net-firewall/nftables[python] )
    selinux? ( 
        sys-libs/libselinux[python]
        sys-apps/policycoreutils[pam]
        audit? ( sys-apps/policycoreutils[audit] )
        split-usr? ( sys-apps/policycoreutils[split-usr] )
        clamav? ( sec-policy/selinux-clamav )
    )"
DEPEND="${RDEPEND}"