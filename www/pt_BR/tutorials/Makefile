#
# $FreeBSD: www/en/tutorials/Makefile,v 1.12 2001/08/01 21:54:18 nik Exp $
#
# Build the FreeBSD tutorials/articles outside of the www tree, and then
# install them in to the right place.

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

DOCS = index.sgml

.include "${WEB_PREFIX}/share/mk/web.site.mk"
