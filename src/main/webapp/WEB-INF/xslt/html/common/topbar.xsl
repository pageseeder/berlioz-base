<?xml version="1.0"?>
<!--
  This XSLT module defines the top navigation bar for the application.

  This also is where you would generally define topbars that can be shared between 
  several services with:

    <xsl:template match="root[ ...some_common_criteria... ]" mode="topbar" priority="1"/>

  However, a service-specific topbar should be defined in the module specific to that service.

    <xsl:template match="root[@service='service_id']" mode="topbar" priority="2"/>

  Note: it is a good idea to use the priority to disambiguate templates that match the same
  element even if specific templates have a higher priority.
-->
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:f="local://function"
                exclude-result-prefixes="#all">

<!--
  Top bar based on Foundation's top bar
  
  @see http://foundation.zurb.com/sites/docs/top-bar.html
-->
<xsl:template match="root" mode="topbar">
<xsl:variable name="user" select="content/account"/>
<div class="top-bar">
  <div class="top-bar-left">
    <ul class="dropdown menu" data-dropdown-menu="">
      <li class="menu-text">Site Title</li>
      <li class="has-submenu">
        <a href="#">One</a>
        <ul class="submenu menu vertical" data-submenu="">
          <li><a href="#">One</a></li>
          <li><a href="#">Two</a></li>
          <li><a href="#">Three</a></li>
        </ul>
      </li>
      <li><a href="#">Two</a></li>
      <li><a href="#">Three</a></li>
    </ul>
  </div>
  <div class="top-bar-right">
    <ul class="menu">
      <li><input type="search" placeholder="Search"/></li>
      <li><button type="button" class="button">Search</button></li>
    </ul>
  </div>
</div>
</xsl:template>

</xsl:stylesheet>
