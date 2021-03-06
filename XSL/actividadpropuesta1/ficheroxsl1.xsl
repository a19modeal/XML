﻿﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
  <html>
    <head>
    <style>
      table {
        border: 1px solid red;
      }
      tr {
        background-color: #4CAF50;
      }
    </style>
    </head>
    <body>
    <h2>My CD Collection</h2>
    <h3>Bob Dylan</h3>
    <table>
      <tr >
        <th>Title</th>
        <th>Artist</th>
        <th>Price</th>
        <th>Year</th>
      </tr>
      <xsl:for-each select="//cd[artist='Bob Dylan']">
        <tr>
          <td><xsl:value-of select="title"/></td>
          <td><xsl:value-of select="company"/></td>
          <td><xsl:value-of select="price"/></td>
          <td><xsl:value-of select="year"/></td>
        </tr>
      </xsl:for-each>
    </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>