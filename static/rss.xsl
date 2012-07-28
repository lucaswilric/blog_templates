<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dc="http://purl.org/dc/elements/1.1/" version="1.0">
<xsl:template match="/rss/channel">
<html>
 <head>
  <title><xsl:value-of select="title"/></title>
  <link rel="stylesheet" type="text/css" href="/bootstrap/css/bootstrap.css" />
  <link rel="stylesheet" type="text/css" href="/css/default.css" />
  <link type="text/css" href="/jplayer/jplayer.blue.monday.css" rel="stylesheet" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
  <script src="/js/jquery.jplayer.min.js"></script>
 </head>
 <body>
  <section id="grid-system">
   <div class="page-header row">
    <h1 class="span10">
     <a href="/">
      <xsl:value-of select="title"/>
     </a>
    </h1>
    <a id="rss-icon" href="/rss.xml" class="span1">
     <img src="/img/feed-icon-28x28.png" />
    </a>
   </div>
   <xsl:for-each select="item">
    <div class="post row">
     <h2 class="offset1 span6">
      <a>
       <xsl:attribute name="href">
        <xsl:value-of select="link"/>
       </xsl:attribute>
       <xsl:value-of select="title"/>
      </a>
     </h2>
     <div class="metadata span3">
      <span class="pub-date"><xsl:value-of select="pubDate"/></span>
      <ul class="tags">
       <xsl:for-each select="category">
        <li><xsl:value-of select="." /></li>
       </xsl:for-each>
      </ul>
     </div>
     <div class="post-content offset1 span9">
      <xsl:value-of select="description" disable-output-escaping="yes"/>
     </div>
     <ul class="metadata post-links offset7 span3">
      <li>
       <a>
        <xsl:attribute name="href">http://github.com/lucaswilric/blog_posts/commits/master/<xsl:value-of select="fileNameBase"/>.yml</xsl:attribute>
        History
       </a>
      </li>
      <li>
       <a>
        <xsl:attribute name="href">http://github.com/lucaswilric/blog_posts/blob/master/<xsl:value-of select="fileNameBase"/>.yml</xsl:attribute>
        Source
       </a>
      </li>
     </ul>
    </div>
   </xsl:for-each>
  </section>
 </body>
</html>
</xsl:template>
</xsl:stylesheet>