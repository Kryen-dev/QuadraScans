<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
      xmlns:html="http://www.w3.org/TR/REC-html40"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>QuadraScans Sitemap</title>
        <style type="text/css">
          body {
            font-family: "Segoe UI", Roboto, sans-serif;
            background: #111;
            color: #fff;
            padding: 20px;
          }
          h1 {
            color: #4ade80;
          }
          table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
          }
          th, td {
            padding: 12px;
            border-bottom: 1px solid #333;
          }
          a {
            color: #93c5fd;
            text-decoration: none;
          }
          a:hover {
            text-decoration: underline;
          }
        </style>
      </head>
      <body>
        <h1>📘 QuadraScans Sitemap</h1>
        <table>
          <tr>
            <th>Page URL</th>
          </tr>
          <xsl:for-each select="//url">
            <tr>
              <td><a href="{loc}"><xsl:value-of select="loc"/></a></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
