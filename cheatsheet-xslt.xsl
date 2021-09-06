<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html"/>

<xsl:template match="tags">
<html>
    <head>
        <title>XML and XST Cheatsheet</title>
    </head>
    <body>
        <h1>XML and XSLT Cheatsheet</h1>
            <xsl:for-each select="tag">
            <h3><xsl:value-of select="name"></xsl:value-of></h3>
            <p><xsl:value-of select="description"></xsl:value-of></p>
            <hr/>
            </xsl:for-each>
    </body>
</html>
</xsl:template>

</xsl:stylesheet>