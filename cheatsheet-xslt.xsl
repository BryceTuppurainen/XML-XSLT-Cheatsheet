<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html"/>

<xsl:template match="tags">
<html>
    <head>
        <link rel="stylesheet" href="cheatsheet-styles.css"/>
        <title>XML and XSLT Cheatsheet</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <xsl:for-each select="tag">
            <h3><xsl:value-of select="tagname"/></h3>
            <p><xsl:value-of select="description"/></p>
            <div class="code-divider"><code><xsl:value-of select="codeContext"/></code></div>
        </xsl:for-each>
    </body>
</html>
</xsl:template>

</xsl:stylesheet>