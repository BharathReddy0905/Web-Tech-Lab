<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/Travels">
  <html>
  <body>
  <h2>Travels Available</h2>
  <table border="1">
    <tr>
      <th>TravelsName</th>
      <th>Destination</th>
      <th>PRICE</th>
    </tr>
    <xsl:for-each select="Address">
      <tr>
        <td><xsl:value-of select="TravelsName"/></td>
        <td><xsl:value-of select="Destination"/></td>
        <td><xsl:value-of select="PRICE"/></td>
      </tr>
    </xsl:for-each>
  </table> <br>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
