# $FreeBSD: www/Makefile,v 1.24 2003/12/05 20:00:18 blackend Exp $

WEB_PREFIX=	${.CURDIR}

SUBDIR= pt_BR

.if !defined(ENGLISH_ONLY) || empty(ENGLISH_ONLY)
.if make(obj)
SUBDIR+= pt_BR
.endif
.endif

links:

.include <bsd.obj.mk>
.include <bsd.subdir.mk>
