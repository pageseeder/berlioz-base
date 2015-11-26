<?xml version="1.0"?>
<!--
  This module defines the header.

  This is where you would generally define headers that can be shared between 
  several services with:

    <xsl:template match="root[ ...some_common_criteria... ]" mode="header" priority="1"/>

  However, a service-specific header should be defined in the module specific to that service.

    <xsl:template match="root[@service='service_id']" mode="header" priority="2"/>

  Note: it is a good idea to use the priority to disambiguate templates that match the same
  element even if specific templates have a higher priority.
-->
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:f="local://function"
                exclude-result-prefixes="#all">

<!--
  Default header for the application.
-->
<xsl:template match="root" mode="header">
<header class="header">
  <div class="row">
    <div class="small-12 columns">
      <h1>Welcome to Berlioz base</h1>
      <h2 class="subheader">An simple Berlioz app to use as a base for your project</h2>
    </div>
  </div>
</header>
</xsl:template>

</xsl:stylesheet>