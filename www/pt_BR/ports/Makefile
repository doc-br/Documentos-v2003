# $FreeBSD: www/en/ports/Makefile,v 1.36 2003/05/11 21:16:56 ceri Exp $

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif
.if exists(Makefile.inc)
.include "Makefile.inc"
.endif

CVS_READONLY?=	YES
CVS_OPT+=	-Q
.if !empty(CVS_READONLY)
CVS_OPT+=	-R
.endif

#
# This hack is allows to build www/ tree for case when ports/ located
# in other repository, for example Repository of Translation Project
#
.if defined(PORTSCVSROOT) && !empty(PORTSCVSROOT)
CVS_OPT+=	-d ${PORTSCVSROOT}
.endif

.if defined(NOPORTSCVS)
${INDEX}: $${PORTSBASE}/${PINDEX}
	${CP} ${PORTSBASE}/${PINDEX} ${INDEX}
.else
${INDEX}:
	${CVS} ${CVS_OPT} co -p ${PINDEX} > ${INDEX}
.endif

# build the list of available packages only on the 
# main FreeBSD machines
hostname!= hostname

#
# don't build the packages links if NO_PACKAGES_LINK
# is set and not empty.
#
# XXX: you can set NO_PACKAGES_LINK to your hostname to
#      test the packages link generation
#
.if defined(NO_PACKAGES_LINK) && !empty(NO_PACKAGES_LINK)
hostname=	${NO_PACKAGES_LINK}
.endif

packages.exists:
.if ${hostname} == "hub.freebsd.org" || ${hostname} == "freefall.freebsd.org" || ${hostname} == "www.freebsd.org"
	@if ${SH} ${.CURDIR}/packages > ${.TARGET}.temp; then \
		${MV} ${.TARGET}.temp ${.TARGET}; \
	else \
		${RM} ${.TARGET}.temp; ${TOUCH} ${.TARGET}; \
	fi;
.else
	${TOUCH} ${.TARGET}
.endif

Makefile.gen: index.sgml .NOTMAIN
	${ECHO_CMD} DOCS= *.sgml > Makefile.gen

index.sgml: ${INDEX} categories packages.exists portindex ports.inc .NOTMAIN
	${RM} -f *.sgml
	${PORTINDEX} ${INDEX} ${.CURDIR}

install: all beforeinstall

all install clean:
	cd ${.CURDIR}; \
		${MAKE} ${MAKEFLAGS} -f ${.CURDIR}/Makefile.inc0 ${.TARGET}
.if defined(WITH_PORTS_GROWTH)
	cd growth; \
		${MAKE} ${MAKEFLAGS} ${.TARGET}
beforeinstall:
.else
beforeinstall:
	${PERL} -pi -e 's/href=\"growth/href=\"http:\/\/www.FreeBSD.org\/ports\/growth/' index.html
.endif

.include "${WEB_PREFIX}/share/mk/web.site.mk"
