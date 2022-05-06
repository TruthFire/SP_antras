<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" standalone="no" omit-xml-declaration="no"/>
    <xsl:template match="/">
        <fo:root language="EN">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="A4-portrait" page-height="297mm"
                                       page-width="210mm" margin-top="5mm"
                                       margin-bottom="5mm" margin-left="5mm"
                                       margin-right="5mm">
                    <fo:region-body margin-top="25mm" margin-bottom="20mm"/>
                    <fo:region-before region-name="xsl-region-before"
                                      extent="25mm" display-align="before"
                                      precedence="true"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="A4-portrait">

                <fo:flow flow-name="xsl-region-body" border-collapse="collapse" reference-orientation="0">
                    
                    <xsl:for-each select="publishers/publisher">
                    <fo:block>Publisher</fo:block>
                    <fo:table table-layout="fixed" width="100%" font-size="10pt"
                              border-color="green" border-width="0.35mm"
                              border-style="solid" text-align="center"
                              display-align="center" space-after="5mm">
                        <fo:table-column column-width="proportional-column-width(20)"/>
                        <fo:table-column column-width="proportional-column-width(30)"/>
                        <fo:table-column column-width="proportional-column-width(25)"/>
                        <fo:table-column column-width="proportional-column-width(50)"/>
                        <fo:table-body font-size="95%">
                            <fo:table-row height="5mm" border-color="green"
                                          border-width="0.35mm" border-style="solid"
                                          text-align="center" display-align="center"
                                          space-after="5mm">
                                <fo:table-cell>
                                    <fo:block>Publisher name</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>Country</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>Location</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>Founded in</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="name"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="country"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="city"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="founded"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                </fo:table-body>
                                </fo:table>
                                 <fo:block>Books</fo:block>
                    <xsl:for-each select="books">
                    <fo:table table-layout="fixed" width="100%" font-size="10pt"
                              border-color="green" border-width="0.35mm"
                              border-style="solid" text-align="center"
                              display-align="center" space-after="5mm">
                        <fo:table-column column-width="proportional-column-width(20)"/>
                        <fo:table-column column-width="proportional-column-width(100)"/>
                        <fo:table-column column-width="proportional-column-width(25)"/>
                        <fo:table-column column-width="proportional-column-width(50)"/>
                        <fo:table-column column-width="proportional-column-width(50)"/>
                        <fo:table-column column-width="proportional-column-width(50)"/>
                        <fo:table-column column-width="proportional-column-width(50)"/>
                        <fo:table-column column-width="proportional-column-width(50)"/>
                        <fo:table-column column-width="proportional-column-width(50)"/>
                        <fo:table-column column-width="proportional-column-width(50)"/>
                        <fo:table-column column-width="proportional-column-width(50)"/>
                        <fo:table-body font-size="95%">
                            <fo:table-row height="5mm" border-color="green"
                                          border-width="0.35mm" border-style="solid"
                                          text-align="center" display-align="center"
                                          space-after="5mm">
                                 <fo:table-cell>
                                    <fo:block>id</fo:block>
                                </fo:table-cell>          
                                <fo:table-cell>
                                    <fo:block>Book name</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>Author name</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>Author surename</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>Author date of birth</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>Published</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>Circulation</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>Rating</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>Rated by</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>Category</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>Place in category</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="id"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="name"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="authors">
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="name"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="surename"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="dob"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </xsl:for-each>
                                <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="published"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="circulation"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="rating">
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="bookRating"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="ratedBy"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </xsl:for-each>
                                <xsl:for-each select="category">
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="name"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="place"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </xsl:for-each>
                                </fo:table-row>
                                </fo:table-body>
                                </fo:table>
                            </xsl:for-each>
                    </xsl:for-each>
                    <fo:block id="end-of-document">

                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>