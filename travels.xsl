<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/catalog">
  <html>
  <body>
  <h2>Travels Available</h2>
  <table border="1">
    <tr>
      <th>TravelsName</th>
      <th>Destination</th>
      <th>PRICE</th>
    </tr>
    <xsl:for-each select="Travels">
      <tr>
        <td><xsl:value-of select="TravelsName"/></td>
        <td><xsl:value-of select="Destination"/></td>
        <td><xsl:value-of select="PRICE"/></td>
      </tr>
    </xsl:for-each>
  </table>  
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
