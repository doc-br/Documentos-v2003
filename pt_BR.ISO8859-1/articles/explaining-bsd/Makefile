# 
# $FreeBSD: doc/en_US.ISO8859-1/articles/explaining-bsd/Makefile,v 1.1 2001/03/14 18:10:08 nik Exp $
#

MAINTAINER=grog@FreeBSD.org

DOC?= article

FORMATS?= html

INSTALL_COMPRESSED?= gz
INSTALL_ONLY_COMPRESSED?=

# 
# SRCS lists the individual SGML files that make up the document. Changes
# to any of these files will force a rebuild
#

# SGML content
SRCS=  article.sgml

DOC_PREFIX?= ${.CURDIR}/../../..
.include "${DOC_PREFIX}/share/mk/doc.project.mk"

