<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:output method="html"/>
    
    <xsl:template match="tags">
        <html>
            <head>
                <link rel="stylesheet" href="cheatsheet-styles.css"/>
                <title>XML and XSLT Cheatsheet</title>
            </head>
            <body>
                <header>
                    <h1>XML and XSLT Cheatsheet</h1>
                </header>
                <nav>
                    <ul>
                        <xsl:for-each select="tag">
                            <li><a href="#{tagname}"><xsl:value-of select="tagname"/></a></li>
                        </xsl:for-each>
                    </ul>
                </nav>
                <main>
                <xsl:for-each select="tag">
                    <h3 id="{tagname}"><xsl:value-of select="tagname"/></h3>
                    <p><xsl:value-of select="description"/></p>
                    <div class="code-divider"><code><xsl:value-of select="codeContext"/></code></div>
                </xsl:for-each>
                </main>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>