<?xml version="1.0"?>
<!--
  This module defines the footer for the application.

  This is where you would generally define footers that can be shared between several services.

    <xsl:template match="root[ ...some_common_criteria... ]" mode="footer" priority="1"/>

  However, a service-specific footer should be defined in the module specific to that service.

    <xsl:template match="root[@service='service_id']" mode="footer" priority="2"/>

  Note: it is a good idea to use the priority to disambiguate templates that match the same
  element even if specific templates have a higher priority.
-->
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:f="local://function"
                exclude-result-prefixes="#all">

<!--
  Default footer for the application
-->
<xsl:template match="root" mode="footer">
<footer>
  <div class="row">
    <div class="medium-6 columns">
      <h4>Working hard to build an awesome app</h4>
    </div>
    <div class="medium-6 columns">
      <p class="text-right">&#xA9; <xsl:value-of select="format-date(current-date(), '[Y0001]')"/> example.org</p>
    </div>
  </div>
</footer>
</xsl:template>

</xsl:stylesheet>
