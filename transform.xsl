<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Library Management</title>
                <style>
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    th, td {
                        padding: 8px 12px;
                        border: 1px solid black;
                        text-align: left;
                    }
                    th {
                        background-color: white;
                    }
                </style>
            </head>
            <body>
                <h1>List of books</h1>
                <table>
                    <tr>
                        <th>Book ID</th>
                        <th>ISBN No.</th>
                        <th>Name</th>
                        <th>Author</th>
                        <th>Publisher</th>
                        <th>Year</th>   
                    </tr>
                    <xsl:for-each select="//book">
                        <tr>
                            <td><xsl:value-of select="@id"></xsl:value-of></td>
                            <td><xsl:value-of select="isbn"></xsl:value-of></td>
                            <td><xsl:value-of select="name"></xsl:value-of></td>
                            <td><xsl:value-of select="author"></xsl:value-of></td>
                            <td><xsl:value-of select="publisher"></xsl:value-of></td>
                            <td><xsl:value-of select="year"></xsl:value-of></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>