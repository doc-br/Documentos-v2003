<?xml version="1.0" encoding="iso-8859-1"?>
<!--
	$FreeBSD: doc/pt_PT.ISO8859-1/share/sgml/transtable-local.xsl,v 1.1 2004/05/15 12:07:41 brueffer Exp $
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <!-- must point to master copy, doc/share/sgml/transtable-master.xsl -->
  <xsl:import href="../../../share/sgml/transtable-master.xsl" />

  <xsl:output type="xml" encoding="iso-8859-1"
	      indent="yes"/>

  <!-- these params should be externally bound. The values
       here are not used actually -->
  <xsl:param name="transtable.xml" select="'./transtable.xml'" />
  <xsl:param name="transtable-sortkey.xml" select="'./transtable-sortkey.xml'" />

  <xsl:param name="transtable-target-element" select="''" />
  <xsl:param name="transtable-word-group" select="''" />
  <xsl:param name="transtable-mode" select="''" />

</xsl:stylesheet>
