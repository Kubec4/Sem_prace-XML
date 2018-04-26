<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
  <html>
    <body>
      <h2>List of Users</h2>
      <table border="1">
        <tr bgcolor="#9acd32">
          <th>User Name</th>
          <th>Group</th>
          <th>Political Affinition</th>
          <th>Phone Number</th>
          <th>Adress</th>
          <th>Personal Number</th>
        </tr>
        <xsl:for-each select="ACCs/account">
        <tr>
          <td><xsl:value-of select="person_info/displayable_data/first_name"/>_<xsl:value-of select="person_info/displayable_data/middle_name"/>_<xsl:value-of select="person_info/displayable_data/second_name"/></td><td>
             <xsl:value-of select="acc_info/acc_type/group"/>
             </td>
          <td>
             <xsl:value-of select="person_info/displayable_data/political_affection"/>
             </td><td>
             <xsl:value-of select="contact_info/phone_number"/>
             </td>
             <td>
             <xsl:value-of select="contact_info/adress/town"/>_<xsl:value-of select="contact_info/adress/street"/>_<xsl:value-of select="contact_info/adress/zip_code"/>
             </td>
             <td>
             <xsl:value-of select="person_info/not_displayable_data/personal_number/pn_part1"/>/<xsl:value-of select="person_info/not_displayable_data/personal_number/pn_part2"/>
             </td>
        </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>

