# $FreeBSD: www/en/news/Makefile,v 1.38 2003/07/11 19:57:06 ceri Exp $

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

DOCS+= news.sgml

# press releases
DOCS+= pressreleases.sgml
DOCS+= press-rel-1.sgml
DOCS+= press-rel-2.sgml
DOCS+= press-rel-3.sgml
DOCS+= press-rel-4.sgml
DOCS+= press-rel-5.sgml
DOCS+= press-rel-6.sgml
DOCS+= press-rel-7.sgml

# The yearly State of the Union address
DOCS+= sou1999.sgml

INDEXLINK= news.html

SUBDIR= 	1993
SUBDIR+= 	1996
SUBDIR+= 	1997
SUBDIR+= 	1998
SUBDIR+= 	1999
SUBDIR+= 	2000
SUBDIR+= 	2001
SUBDIR+= 	2002
SUBDIR+=	status

DATA=		newsflash.html news.rdf press.html
CLEANFILES+=	newsflash.html news.rdf press.html

newsflash.html: newsflash.xsl news.xml includes.xsl ../includes.xsl
	${XSLTPROC} ${XSLTPROCOPTS} -o ${.TARGET} \
		${.CURDIR}/newsflash.xsl ${.CURDIR}/news.xml
.if !defined(NO_TIDY)
	-${TIDY} ${TIDYOPTS} ${.TARGET}
.endif

news.rdf: news-rdf.xsl news.xml includes.xsl ../includes.xsl
	${XSLTPROC} ${XSLTPROCOPTS} -o ${.TARGET} \
		${.CURDIR}/news-rdf.xsl ${.CURDIR}/news.xml

press.html: press.xsl press.xml includes.xsl ../includes.xsl
	${XSLTPROC} ${XSLTPROCOPTS} -o ${.TARGET} \
		${.CURDIR}/press.xsl ${.CURDIR}/press.xml
.if !defined(NO_TIDY)
	-${TIDY} ${TIDYOPTS} ${.TARGET}
.endif

.include "${WEB_PREFIX}/share/mk/web.site.mk"
