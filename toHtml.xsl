<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
      <html>
       <head>
      <style type="text/css">
          body {
              background-color: #E1E1E1;
              font-family: Segoe UI Historic, Segoe UI, Helvetica, Arial, sans-serif;
          }
  
          .rect {
              background-color: #fff;
              border-radius: 5px;
              width: 1000px;
              height: auto;
              margin: auto;
              padding-bottom: 15px;
              box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
              margin-bottom: 20px;
  
          }
          .publisher {
              padding: 15px;
          }
          .publisher-name {
              color: #000;
              font-size: 18px;
              font-weight: 700;
             
             
              display: inline-block;
          }
          .publisher-info {
              color: #686868;
              font-size: 14px;
          }
          .book {
              padding-left: 15px;
          }
          .book-name {
              color: #000;
              font-size: 18px;
              font-weight: 700;
          }
  
          .author {
              color: #686868;
              font-size: 14px;
          }
          </style>
    </head>
         <body>
            <xsl:for-each select="publishers/publisher">
               <div class="rect">
                  <div class="publisher">
                     <span class="publisher-name">
                        <xsl:value-of select="name"/>
                        (
                        <xsl:value-of select="country"/>
                        , 
                        <xsl:value-of select="city"/>
                        )
                     </span>
                     <br></br>
                     <span class="publisher-info">
                        Founded in: 
                        <xsl:value-of select="founded"/>
                     </span>
                  </div>
                  <hr></hr>
                  <xsl:for-each select="books">
                     <div class="book">
                        <span class="book-name">
                           <xsl:value-of select="name"/>
                           (id: 
                           <xsl:value-of select="id"/>
                           ).
                        </span>
                        <xsl:for-each select="authors">
                           <span class="author">
                              By: 
                              <xsl:value-of select="name"/>&#160;
                             <xsl:value-of select="surename"/>
                              (Born: 
                              <xsl:value-of select="dob"/>)
                           </span>
                           <br></br>
                        </xsl:for-each>
                        <xsl:for-each select="category">
                           #<xsl:value-of select="place"/>
                           in 
                           <xsl:value-of select="name"/>.<br/>
                        </xsl:for-each>
                        Published in: 
                        <xsl:value-of select="published"/>. Circulation:
                        <xsl:value-of select="circulation"/>.<br></br>
                        <xsl:for-each select="rating">
                           Rating: 
                           <xsl:value-of select="bookRating"/>; Rated by: 
                           <xsl:value-of select="ratedBy"/>
                           People.<br></br>
                        </xsl:for-each>
                     </div>
                  </xsl:for-each>
               </div>
            </xsl:for-each>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>