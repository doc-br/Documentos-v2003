<?xml version="1.0" encoding="ISO-8859-1" ?>

<!-- $FreeBSD: www/share/sgml/includes.misc.xsl,v 1.2 2003/12/06 07:39:32 hrs Exp $ -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:param name="leadingmark" select="'&#183; '"/>

  <!-- Often used trademarks -->
  <xsl:variable name="unix" select="'UNIX&#174;'"/>
  <xsl:variable name="java" select="'Java&#8482;'"/>
  <xsl:variable name="jdk" select="'JDK&#8482;'"/>
  <xsl:variable name="posix" select="'POSIX&#174;'"/>

  <!-- template: "html-index-advisories-items"
       pulls in the 10 most recent security advisories -->

  <xsl:template name="html-index-advisories-items">
    <xsl:param name="advisories.xml" select="''" />

    <xsl:for-each select="document($advisories.xml)/descendant::advisory[position() &lt;= 10]">
      <xsl:value-of select="$leadingmark" /><a>
	<xsl:attribute name="href">ftp://ftp.freebsd.org/pub/FreeBSD/CERT/advisories/<xsl:value-of select="name"/>.asc</xsl:attribute>
	<xsl:value-of select="name"/>
      </a><br/>
    </xsl:for-each>
  </xsl:template>

  <!-- template: "html-index-advisories-items-lastmodified" -->

  <xsl:template name="html-index-advisories-items-lastmodified">
    <xsl:param name="advisories.xml" select="''" />

    <xsl:value-of select="document($advisories.xml)/descendant::month[position() = 1]/name"/>
    <xsl:text> </xsl:text>
    <xsl:value-of select="document($advisories.xml)/descendant::day[position() = 1]/name"/>
    <xsl:text>, </xsl:text>
    <xsl:value-of select="document($advisories.xml)/descendant::year[position() = 1]/name"/>
  </xsl:template>

  <!-- template: "html-index-news-project-items"
       pulls in the 10 most recent project items -->

  <xsl:template name="html-index-news-project-items">
    <xsl:param name="news.project.xml" select="''" />

    <xsl:for-each select="document($news.project.xml)/descendant::event[position() &lt;= 10]">
      <xsl:value-of select="$leadingmark" /><a>
	<xsl:attribute name="href">
	  news/newsflash.html#<xsl:call-template name="generate-event-anchor"/>
	</xsl:attribute>
	<xsl:choose>
	  <xsl:when test="count(child::title)">
	    <xsl:value-of select="title"/><br/>
	  </xsl:when>
	  <xsl:otherwise>
	    <xsl:value-of select="p"/><br/>
	  </xsl:otherwise>
	</xsl:choose>
      </a>
    </xsl:for-each>
  </xsl:template>

  <!-- template: "html-index-news-project-items-lastmodified" -->

  <xsl:template name="html-index-news-project-items-lastmodified">
    <xsl:param name="news.project.xml" select="''" />

    <xsl:value-of select="document($news.project.xml)/descendant::month[position() = 1]/name"/>
    <xsl:text> </xsl:text>
    <xsl:value-of select="document($news.project.xml)/descendant::day[position() = 1]/name"/>
    <xsl:text> </xsl:text>
    <xsl:value-of select="document($news.project.xml)/descendant::year[position() = 1]/name"/>
  </xsl:template>

  <!-- template: "html-index-news-press-items"
       pulls in the 10 most recent press items -->

  <xsl:template name="html-index-news-press-items">
    <xsl:param name="news.press.xml" select="''" />

    <xsl:for-each select="document($news.press.xml)/descendant::story[position() &lt; 10]">
      <xsl:value-of select="$leadingmark" /><a>
	<xsl:attribute name="href">
	  news/press.html#<xsl:call-template name="generate-story-anchor"/>
	</xsl:attribute>
	<xsl:value-of select="name"/>
      </a><br/>
    </xsl:for-each>
  </xsl:template>

  <!-- template: "html-index-news-press-items-lastmodified" -->

  <xsl:template name="html-index-news-press-items-lastmodified">
    <xsl:param name="news.press.xml" select="''" />

    <xsl:value-of select="document($news.press.xml)/descendant::month[position() = 1]/name"/>
    <xsl:text> </xsl:text>
    <xsl:value-of select="document($news.press.xml)/descendant::year[position() = 1]/name"/>
  </xsl:template>

  <!-- template: "html-index-mirrors-options-list"
       generates mirror sites list in index.html -->

  <xsl:template name="html-index-mirrors-options-list">
    <xsl:param name="mirrors.xml" select="''" />

    <xsl:for-each select="document($mirrors.xml)/mirrors/entry[country/@role != 'primary' and
                          host[@type = 'www']/url[@proto = 'httpv6']]">
      <xsl:sort select="country" />

      <xsl:for-each select="host[@type = 'www']/url[@proto = 'httpv6']">
	<option><xsl:attribute name="value"><xsl:value-of select="." /></xsl:attribute>
	  <xsl:choose>
	    <xsl:when test="last() = 1">
	      <xsl:value-of select="concat('IPv6 ', ../../country)" />
	    </xsl:when>
	    <xsl:otherwise>
	      <xsl:value-of select="concat('IPv6 ', ../../country, '/', position())" />
	    </xsl:otherwise>
	  </xsl:choose>
	</option>
      </xsl:for-each>
    </xsl:for-each>

    <xsl:for-each select="document($mirrors.xml)/mirrors/entry[country/@role != 'primary' and
                          host[@type = 'www']/url[@proto = 'http']]">
      <xsl:sort select="country" />

      <xsl:for-each select="host[@type = 'www']/url[@proto = 'http']">
	<option><xsl:attribute name="value"><xsl:value-of select="." /></xsl:attribute>
	  <xsl:choose>
	    <xsl:when test="last() = 1">
	      <xsl:value-of select="../../country" />
	    </xsl:when>
	    <xsl:otherwise>
	      <xsl:value-of select="concat(../../country, '/', position())" />
	    </xsl:otherwise>
	  </xsl:choose>
	</option>
      </xsl:for-each>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
