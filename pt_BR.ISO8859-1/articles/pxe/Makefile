# $FreeBSD: doc/en_US.ISO8859-1/articles/pxe/Makefile,v 1.4 2003/08/08 09:56:24 simon Exp $

DOC?= article

FORMATS?= html

INSTALL_COMPRESSED?=gz
INSTALL_ONLY_COMPRESSED?=

SRCS= article.sgml

DOC_PREFIX?= ${.CURDIR}/../../..

afterinstall:
	${INSTALL_DOCS} ${.CURDIR}/dhcpd.conf ${.CURDIR}/install.cfg \
	    ${.CURDIR}/loader.rc ${.CURDIR}/pkgmaker.sh \
	    ${.CURDIR}/post ${.CURDIR}/pre ${DESTDIR}

.include "${DOC_PREFIX}/share/mk/doc.project.mk"
