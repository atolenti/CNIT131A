<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
    <h1>List of Clients</h1>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Name</th>
        <th>Phone</th>
        <th>Email</th>
        <th>Account Total</th>
      </tr>
      <xsl:for-each select="Accounts/Client">
      <xsl:sort select="Name/Last" order="Ascending" data-type="text" />
      <tr>
        <td><xsl:value-of select="Name" /></td>
        <td><xsl:value-of select="Phone" /></td>
        <td><xsl:value-of select="E-mail" /></td>
        <td align="right">
        <!--<xsl:value-of select="translate(Account_Total, translate(Account_Total,'0123456789' , ''), '')" />-->
        <xsl:choose>
          <xsl:when test="translate(Account_Total, translate(Account_Total,'0123456789' , ''), '') &lt;= 80000">
            <!--<xsl:text color="green">-->
            <span style="color:red; font-weight: bold;"> 
              <xsl:value-of select="translate(Account_Total,',' , '')" /> 
            </span>
            <!--</xsl:text>-->
          </xsl:when>
          <xsl:otherwise>
              <xsl:value-of select="translate(Account_Total,',' , '')" /> 
          </xsl:otherwise>
        </xsl:choose>
        </td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

