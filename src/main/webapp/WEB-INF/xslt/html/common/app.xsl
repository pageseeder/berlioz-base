<?xml version="1.0"?>
<!--
  This XSLT module usually contains common application specific templates

  This is where you would define:
   - global variables
   - the HTML head
   - the styles and scripts

  This module could also define the footer, header, etc... although in general,
  it is better to define these in their own module so that it is easier to maintain.

  Templates in this modules should be designed so that they can easily be overridden if necessary.
  
  As a general convention, templates or functions starting with `_` should not be used outside
  their own module.
-->
<!DOCTYPE xsl:stylesheet [
  <!ENTITY app-version SYSTEM "../../../version.ent">
]>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:f="local://function"
                exclude-result-prefixes="#all">

<!-- GLOBAL VARIABLES                                                                           -->
<!-- ========================================================================================== -->

<!-- The version of the application -->
<xsl:variable name="app-version">&app-version;</xsl:variable>

<!-- General context for the app -->
<xsl:variable name="context" select="/root/header/path/@context"/>

<!-- GLOBAL TEMPLATES                                                                           -->
<!-- ========================================================================================== -->

<!--
  Generate metadata to insert in the HTML head of every page.
  
  It loads the scripts and styles automatically from the bundler.
-->
<xsl:template match="root" mode="head">
  <xsl:variable name="context" select="header/path/@context"/>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Berlioz base</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:400,100,700&amp;subset=latin,latin-ext" type="text/css"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.0.1/css/foundation.min.css" />
  <xsl:for-each select="content[@name='bundles']/style">
    <link rel="stylesheet" href="{$context}{@src}"/>
  </xsl:for-each>
  <xsl:call-template name="_favicons"/>
</xsl:template>

<!--
  Main part of the page.
-->
<xsl:template match="root" mode="main">
<main class="main">
  <div class="row">
    <div class="small-12 columns">
      <xsl:apply-templates select="content[@target='main']" mode="content"/>
    </div>
  </div>
</main>
</xsl:template>

<!--
  Scripts to be included at the bottom of the page.
-->
<xsl:template match="root" mode="bottom">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"/>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.0.1/js/foundation.min.js"/>
  <script>
    $(document).foundation();
  </script>
  <!-- Output all the service specific scripts from the bundler (if any) -->
  <xsl:for-each select="content[@name='bundles']/script">
    <script src="{$context}{@src}"/>
  </xsl:for-each>
  <!-- Display the application version as a comment (useful for debugging) -->
  <xsl:comment>v<xsl:value-of select="$app-version"/></xsl:comment>
</xsl:template>

<!-- NAMED TEMPLATES USED ABOVE                                                                 -->
<!-- ========================================================================================== -->

<!--
  Favicons
  @see http://realfavicongenerator.net/
-->
<xsl:template name="_favicons">
<!-- TODO
  <link rel="apple-touch-icon" sizes="57x57" href="/style/favicons/apple-touch-icon-57x57.png"/>
  <link rel="apple-touch-icon" sizes="60x60" href="/style/favicons/apple-touch-icon-60x60.png"/>
  <link rel="apple-touch-icon" sizes="72x72" href="/style/favicons/apple-touch-icon-72x72.png"/>
  <link rel="apple-touch-icon" sizes="76x76" href="/style/favicons/apple-touch-icon-76x76.png"/>
  <link rel="apple-touch-icon" sizes="114x114" href="/style/favicons/apple-touch-icon-114x114.png"/>
  <link rel="apple-touch-icon" sizes="120x120" href="/style/favicons/apple-touch-icon-120x120.png"/>
  <link rel="apple-touch-icon" sizes="144x144" href="/style/favicons/apple-touch-icon-144x144.png"/>
  <link rel="apple-touch-icon" sizes="152x152" href="/style/favicons/apple-touch-icon-152x152.png"/>
  <link rel="apple-touch-icon" sizes="180x180" href="/style/favicons/apple-touch-icon-180x180.png"/>
  <link rel="icon" type="image/png" href="/style/favicons/favicon-32x32.png?v=1" sizes="32x32"/>
  <link rel="icon" type="image/png" href="/style/favicons/favicon-194x194.png?v=1" sizes="194x194"/>
  <link rel="icon" type="image/png" href="/style/favicons/favicon-96x96.png?v=1" sizes="96x96"/>
  <link rel="icon" type="image/png" href="/style/favicons/android-chrome-192x192.png" sizes="192x192"/>
  <link rel="icon" type="image/png" href="/style/favicons/favicon-16x16.png?v=1" sizes="16x16"/>
  <link rel="manifest" href="/style/favicons/manifest.json"/>
  <link rel="shortcut icon" href="/favicon.ico?v=1"/>
  <meta name="msapplication-TileColor" content="#2d89ef"/>
  <meta name="msapplication-TileImage" content="/style/favicons/mstile-144x144.png"/>
  <meta name="msapplication-config" content="/style/favicons/browserconfig.xml"/>
  <meta name="theme-color" content="#ffffff"/>
-->
</xsl:template>

</xsl:stylesheet>
