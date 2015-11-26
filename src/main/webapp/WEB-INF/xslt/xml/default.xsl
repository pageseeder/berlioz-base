<?xml version="1.0" encoding="UTF-8"?>
<!--
  Default template invoked by Berlioz for XML output.

  This stylesheet can be used to filter the XML out, for example for an API.
  If left untouched, it will return the same as the source XML.
-->
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="#all">

<!-- XML properties -->
<xsl:output method="xml" media-type="application/xml" indent="no" encoding="utf-8" />

<!-- Default -->
<xsl:template match="/root">
<xsl:sequence select="."/>
</xsl:template>

</xsl:stylesheet>
