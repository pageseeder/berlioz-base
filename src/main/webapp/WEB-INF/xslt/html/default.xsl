<?xml version="1.0" encoding="UTF-8"?>
<!--
  This module assembles all the modules used the 'default' group of services.
-->
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:bf="http://weborganic.org/Berlioz/XSLT/Function"
                exclude-result-prefixes="#all">

<!-- Import library modules first -->
<xsl:import href="lib/psml-beta7-3.xsl"/>

<!-- Import common modules second -->
<xsl:import href="common/app.xsl"/>
<xsl:import href="common/topbar.xsl"/>
<xsl:import href="common/header.xsl"/>
<xsl:import href="common/footer.xsl"/>
<xsl:import href="common/psml.xsl"/>

<!-- Import modules specific to each service last -->
<xsl:import href="default/home.xsl"/>

<!-- General Output properties. -->
<xsl:output method="html" encoding="utf-8" indent="yes" undeclare-prefixes="no" media-type="text/html"/>

<!--
  Main HTML structure of every page.

  Each part is using a separate template mode.
  The actual templates for each mode are defined elsewhere to keep this module 
  clean and simple.
-->
<xsl:template match="/">
<!-- Display the HTML5 Doctype -->
<xsl:text disable-output-escaping="yes"><![CDATA[<!doctype html>
]]></xsl:text>
<html>
  <head>
    <xsl:apply-templates mode="head"/>
  </head>
  <body>
    <xsl:apply-templates mode="topbar"/>
    <xsl:apply-templates mode="header"/>
    <xsl:apply-templates mode="main"/>
    <xsl:apply-templates mode="footer"/>
    <xsl:apply-templates mode="bottom"/>
  </body>
</html>
</xsl:template>

</xsl:stylesheet>
