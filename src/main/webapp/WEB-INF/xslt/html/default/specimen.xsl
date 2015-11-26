<?xml version="1.0"?>
<!--
  This XSLT module specific to the home page.
-->
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:f="local://function"
                exclude-result-prefixes="#all">

<!--
 Apply PSML templates
-->
<xsl:template match="content[@name='specimen']" mode="content">
  <xsl:apply-templates mode="psml"/>
</xsl:template>

</xsl:stylesheet>
