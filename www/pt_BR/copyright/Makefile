# $FreeBSD: www/en/copyright/Makefile,v 1.13 2003/06/17 20:00:28 murray Exp $

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

DOCS=	license.sgml
DOCS+=	freebsd-license.sgml
DOCS+=	daemon.sgml
DOCS+=	copyright.sgml
DOCS+=	trademarks.sgml

INDEXLINK= copyright.html

CVS_READONLY?=	YES
CVS_OPT+=	-Q
.if !empty(CVS_READONLY)
CVS_OPT+=	-R
.endif

DATA+= COPYING COPYING.LIB ${LEGAL}

# FreeBSD Ports redistribution restrictions
LEGAL= LEGAL
LEGAL_FILE= 	ports/LEGAL
CLEANFILES+=	${LEGAL}
.if defined(NOPORTSCVS)
${LEGAL}: $${PORTSBASE}/${LEGAL_FILE}
	${CP} ${PORTSBASE}/${LEGAL_FILE} ${LEGAL}
.else
${LEGAL}:
	${CVS} ${CVS_OPT} co -p ${LEGAL_FILE} > ${.TARGET}
.endif

.include "${WEB_PREFIX}/share/mk/web.site.mk"
