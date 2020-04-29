﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
  <html>
    <head>
      <style>
        td {
          background-color:  #58d061;
        }
        tr {
          background-color: lightgray;
        }
      </style>
    </head>
    <body>
    <h2>Predicción del Tiempo para <xsl:value-of select="/root/nombre"/></h2>
    <table border="1">
      <tr >
        <th>Día</th>
        <th>Estado Cielo</th>
        <th>Temp Min</th>
        <th>Temp Max</th>
      </tr>
      <xsl:for-each select="/root/prediccion/dia">
        <tr>
          <td><xsl:value-of select="@fecha"/></td>
          <td><xsl:value-of select="estado_cielo/@descripcion"/></td>
          <xsl:choose>
            <xsl:when test="temperatura/minima &lt; 15">
              <td style="background-color: lightblue;">
                <xsl:value-of select="temperatura/minima"/>
              </td>
            </xsl:when>
            <xsl:when test="temperatura/minima &gt; 15">
              <td style="background-color: crimson;">
                <xsl:value-of select="temperatura/minima"/>
              </td>
            </xsl:when>
          </xsl:choose>
          <xsl:choose>
            <xsl:when test="temperatura/maxima &lt; 30">
              <td style="background-color: orange;">
                <xsl:value-of select="temperatura/maxima"/>
              </td>
            </xsl:when>
            <xsl:when test="temperatura/maxima &gt; 30">
              <td style="background-color: red;">
                <xsl:value-of select="temperatura/maxima"/>
              </td>
            </xsl:when>
          </xsl:choose>
        </tr>
      </xsl:for-each>
    </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>