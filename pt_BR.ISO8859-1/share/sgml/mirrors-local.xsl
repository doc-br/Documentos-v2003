<?xml version="1.0" encoding="iso-8859-1"?>
<!--
	$FreeBSD: doc/pt_PT.ISO8859-1/share/sgml/mirrors-local.xsl,v 1.1 2003/12/23 01:21:01 pan Exp $
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <!-- must point to master copy, doc/share/sgml/mirrors-master.xsl -->
  <xsl:import href="../../../share/sgml/mirrors-master.xsl" />

  <xsl:output type="xml" encoding="iso-8859-1"
	      omit-xml-declaration="yes"
	      indent="yes"/>

  <!-- these params should be externally bound. The values
       here are not used actually -->
  <xsl:param name="proto" select="''" />
  <xsl:param name="target" select="''" />

  <!-- template: "mirrors-docbook-contact" -->

  <xsl:template name="mirrors-docbook-contact">
    <xsl:param name="email" value="'someone@somewhere'"/>

    <para>No caso de problemas, por favor, contacte o hostmaster
      <email><xsl:value-of select="$email" /></email> desse Dominio.</para>
  </xsl:template>

  <!-- template: "mirrors-lastmodified" -->

  <xsl:template name="mirrors-lastmodified">
    <xsl:text>Atualizado em: </xsl:text>
    <xsl:call-template name="mirrors-lastmodified-utc" />
  </xsl:template>
</xsl:stylesheet>
