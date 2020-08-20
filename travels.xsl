<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0"
   xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">  

   <xsl:template match = "/">
      <html>
         <body style="background-color:#E3E2DF;font-family:verdana;">
            <h2 align="center">Travels Available</h2>
        
            <table align="center" border = "1">
               <tr bgcolor = "#5980eb">
                  <th>Address Id</th>
                  <th>Travels Name</th>
                  <th>PRICE</th>    
                  <th>Category</th>              
               </tr>               
               <xsl:for-each select = "Travels/Address">
                  <tr>
                     <td><xsl:value-of select = "@id"/></td>
                     <td><xsl:value-of select = "concat(TravelsName,' ',Destination)"/></td>
                     <td><xsl:value-of select = "floor(PRICE)"/></td>                                
                     <td>
                        <xsl:choose>
                           <xsl:when test = "PRICE div 10 = 1">
                              High
                           </xsl:when>
              
                           <xsl:when test = "PRICE div 5 >= 1">
                              Medium
                           </xsl:when>
              
                           <xsl:otherwise>
                              Low
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
