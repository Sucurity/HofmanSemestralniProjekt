<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : Hofman_Petr.xsl
    Created on : 23. března 2017, 19:28
    Author     : Sucurity
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Hofman_Petr.xsl</title>
            </head>
            <body>
              
        <h1>Konfigurace_objektu_v_Active_Directory</h1>
        <table>
          <xsl:for-each select="Konfigurace_objektu_v_Active_Directory/Vytvoreni">
            <tr><td colspan="3"><h2 >Vytvoreni - <xsl:value-of select="Typ_objektu/kategorie"/></h2></td></tr>
            <tr>
            <td colspan="3">
              <xsl:for-each select="Typ_objektu">
                <table style="border: 1px solid;">
                  <tr>
                    <td>Firma:</td>
                    <td><xsl:value-of select="firma"/></td>
                  </tr>
                  <tr>
                    <td>Kategorie:</td>
                    <td><xsl:value-of select="kategorie"/></td>
                  </tr>
                  <tr>
                    <td>ID:</td>
                    <td><xsl:value-of select="id"/></td>
                  </tr>
                  <tr>
                    <td>Popis:</td>
                    <td><xsl:value-of select="popis"/></td>
                  </tr>
                </table>
              </xsl:for-each>
            </td>
            </tr>
                  <tr>
                    <xsl:for-each select="Pridani_objektu/objekt">
                      <td>
                        <table style="border: 1px solid;">
                        <tr><td colspan="2"><h3 >objekt</h3></td></tr>
                          <tr>
                            <td>Kategorie:</td>
                            <td><xsl:value-of select="kategorie"/></td>
                          </tr>
                          <tr>
                            <td>ID:</td>
                            <td><xsl:value-of select="id"/></td>
                          </tr>
                          <tr>
                            <td>Jméno:</td>
                            <td><xsl:value-of select="jmeno"/></td>
                          </tr>
                          <tr>
                            <td>Platnost_pristupu_od:</td>
                            <td><xsl:value-of select="Platnost_pristupu_od"/></td>
                          </tr>
                          <tr>
                            <td>Platnost_pristupu_do:</td>
                            <td><xsl:value-of select="Platnost_pristupu_do"/></td>
                          </tr>
                           <tr>
                            <td>Post_ve_firme:</td>
                            <td><xsl:value-of select="post_ve_firme"/></td>
                          </tr>   
                        </table>
                      </td>
                    </xsl:for-each>
                  </tr>
          </xsl:for-each>
        </table>
      </body>
       
        </html>
    </xsl:template>

</xsl:stylesheet>
