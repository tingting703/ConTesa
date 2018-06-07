<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
              xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output 
  method="xml"
  encoding="windows-1252"
  indent="no"
  doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
  omit-xml-declaration="yes"
/>

<!-- Read the localized messages from the specified language file -->
<xsl:variable name="messages" select="document('../lang/de.xml')/messages"/>

<!-- some meta information have to be passed to the transformation -->
<xsl:variable name="output-encoding" select="'windows-1252'" />
<xsl:variable name="is-chm" select="true()" />
<xsl:variable name="is-zip" select="false()" />

<!-- Now get the real guts of the stylesheet -->
<xsl:include href="../xsl/common.xsl"/>

</xsl:stylesheet>
