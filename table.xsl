<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>packages Available</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>Destination</th>
      <th>PRICE</th>
      <th>TravelsName</th>
    </tr>
    <xsl:for-each select="Travels/Address">
    <tr>
      <td><xsl:value-of select="Destination"/></td>
      <td><xsl:value-of select="PRICE"/></td>
      <td><xsl:value-of select="TravelsName"/></td>
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>