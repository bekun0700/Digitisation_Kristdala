<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:html="http://www.w3.org/1999/xhtml" exclude-result-prefixes="xs tei html" version="2.0">
    <xsl:output method="html"/>

    <!-- transform the root element (TEI) into an HTML template -->
    <xsl:template match="tei:TEI">
        <xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text><xsl:text>&#xa;</xsl:text>
        <html lang="en" xml:lang="en">
            <head>
                <title>
                    <!-- add the title from the metadata. This is what will be shown
                    on your browsers tab-->
                    Anteckningar om Kristdala socken i Tunaläns härad och Kalmar län
                </title>
                <!-- load bootstrap css (requires internet!) so you can use their pre-defined css classes to style your html -->
                <link rel="stylesheet"
                    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                    crossorigin="anonymous"/>
                <!-- load the stylesheets in the assets/css folder, where you can modify the styling of your website -->
                <link rel="stylesheet" href="assets/css/main.css"/>
                <link rel="stylesheet" href="assets/css/desktop.css"/>
           
            </head>
            
            <body>
                <header>
                    <h1>
                        <xsl:apply-templates select="//tei:TEI//tei:title"/>
                    </h1>
                </header>
                <nav id="sitenav">
                    <a href="index.html">Home</a> |
                    <a href="diplomatic.html">Diplomatic Transcription</a> |
                    <a href="reading.html">Gallery</a> |
                    <a href="toplayer.html">Top Layer</a> |
                </nav>
                <main id="manuscript">
                    <!-- bootstrap "container" class makes the columns look pretty -->
                    <div class="container">
                    <!-- define a row layout with bootstrap's css classes (two columns) -->
                        <div class="row">
                            <!-- first column: load the image based on the IIIF link in the graphic above -->
                            <div class="col-sm">
                               <article id="scan">
                                   <h3>Image</h3>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_001-2']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_002-2']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_003-1']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                               
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_003-2']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_004-1']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_004-2']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_005-1']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_005-2']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_006-1']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_006-2']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_007-1']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_007-2']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_008-1']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_008-2']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_009-1']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_009-2']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_010-1']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_010-2']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_011-1']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_011-2']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_012-1']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_012-2']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_013-1']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_013-2']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_014-1']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_014-2']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_015-1']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_015-2']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_016-1']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_016-2']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_017-1']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_017-2']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_018-1']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_018-2']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_019-1']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_019-2']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_020-1']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                               
                               
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_020-2']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_021-1']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_021-2']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_022-1']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_022-2']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_023-1']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_023-2']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_024-1']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_024-2']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_025-1']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_025-2']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_026-1']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_026-2']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_027-1']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_027-2']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_028-1']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_028-2']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_029-1']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_029-2']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_030-1']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_030-2']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_031-1']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                                   <img width="575">
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:surface[@xml:id='Dala']//tei:graphic[@xml:id='Dala_031-2']/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='Dala']//tei:figDesc"/>
                                       </xsl:attribute>
                                   </img>
                                   
                               </article>
                            </div>
                            <!-- second column: apply matching templates for anything nested underneath the tei:text element -->
                            <div class="col-sm">
                                <article id="transcription">
                                    <h3>Transcription</h3>
                                    <xsl:apply-templates select="//tei:TEI//tei:text"/>
                                </article>
                            </div>
                        </div>
                    </div>
                </main>
                <footer>
                <div class="row" id="footer">
                  <div class="col-sm copyright">
                      <div>
                        <a href="https://creativecommons.org/licenses/by/4.0/legalcode">
                          <img src="assets/img/logos/cc.svg" class="copyright_logo" alt="Creative Commons License"/><img src="assets/img/logos/by.svg" class="copyright_logo" alt="Attribution 4.0 International"/>
                        </a>
                      </div>
                      <div>
                         2022 Bert Kunzmann and Mohammed Habibur Rahman
                      </div>
                    </div>
                </div>
                </footer>
            </body>
        </html>
    </xsl:template>

    <!-- by default all text nodes are printed out, unless something else is defined.
    We don't want to show the metadata. So we write a template for the teiHeader that
    stops the text nodes underneath (=nested in) teiHeader from being printed into our
    html-->
    <xsl:template match="tei:teiHeader"/>

    <!-- turn tei linebreaks (lb) into html linebreaks (br) -->
    <xsl:template match="tei:lb">
        <br/>
    </xsl:template>
    <!-- not: in the previous template there is no <xsl:apply-templates/>. This is because there is nothing to
    process underneath (nested in) tei lb's. Therefore the XSLT processor does not need to look for templates to
    apply to the nodes nested within it.-->

    <!-- we turn the tei head element (headline) into an html h1 element-->
    <xsl:template match="tei:head">
        <h2>
            <xsl:apply-templates/>
        </h2>
    </xsl:template>

    <!-- transform tei paragraphs into html paragraphs -->
    <xsl:template match="tei:p">
        <p>
            <!-- apply matching templates for anything that was nested in tei:p -->
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <!-- transform tei del into html del -->
    <xsl:template match="tei:del">
        <del>
            <xsl:apply-templates/>
        </del>
    </xsl:template>

    <!-- transform tei add into html sup -->
    <xsl:template match="tei:add">
        <sup>
            <xsl:apply-templates/>
        </sup>
    </xsl:template>

    <!-- transform tei hi (highlighting) with the attribute @rend="u" into html u elements -->
    <!-- how to read the match? "For all tei:hi elements that have a rend attribute with the value "u", do the following" -->
    <xsl:template match="tei:hi[@rend = 'u']">
        <u>
            <xsl:apply-templates/>
        </u>
    </xsl:template>
    
    <xsl:template match="tei:figure">
        <img src="{tei:graphic/@url}" alt="{tei:head}"/> 
    </xsl:template>
    
</xsl:stylesheet>
