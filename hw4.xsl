<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <head>
      <title>ABC Financial Startup</title>
      <style type="text/css">
        body {
          font-family: "Arial", sans-serif, verdana;
        }

        p
        {
          font-size: 16px;
        }

        img.center {
          display: block;
          margin: 0 auto;
        }

       </style>
    </head>

  <body>
    <h1>ABC Financial Startup</h1>
    <img src="financialstartup.jpg" alt="ABC Financial Startup" class="center" />
    <p>We are a very young financial manager company and we are proud of our clients</p>
    <p>We have started with 1 client a little bit more than 10 years and now we have <xsl:value-of select="count(Accounts/Client)" /> clients!</p>
    <p>These are our clients: 
      <xsl:for-each select="Accounts/Client/Name">
        <xsl:choose>
          <xsl:when test="position() != last()">
              <xsl:value-of select="concat(First, ' ' , Last, ', ')" />
          </xsl:when>
          <xsl:otherwise>
             <xsl:value-of select="concat('and ', First, ' ' , Last, '.')" />
          </xsl:otherwise>
        </xsl:choose>
      </xsl:for-each>
    </p>
    <p>
      <xsl:value-of select="count(Accounts/Client[Years &gt; 7])" /> of our clients are with us for more then 7 years!
    </p>
  </body>

  </html>
</xsl:template>
</xsl:stylesheet>

