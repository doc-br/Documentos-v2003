# $FreeBSD: doc/en_US.ISO8859-1/articles/contributing/Makefile,v 1.1 2001/10/08 06:18:45 murray Exp $

DOC?= article

FORMATS?= html

INSTALL_COMPRESSED?=gz
INSTALL_ONLY_COMPRESSED?=

JADEFLAGS+=	-V %generate-article-toc%

SRCS= article.sgml

DOC_PREFIX?= ${.CURDIR}/../../..

.include "${DOC_PREFIX}/share/mk/doc.project.mk"
