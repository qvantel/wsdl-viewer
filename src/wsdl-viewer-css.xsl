<?xml version="1.0" encoding="UTF-8" ?>
<!--
/**
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements. See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
-->

<!--
* ====================================================================
* wsdl-viewer-css.xsl
* Author: tomi vanek
* ====================================================================
* Description:
* 		web-page graphical design
* ====================================================================
-->

<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.w3.org/1999/xhtml">

<!--
==================================================================
	CSS
==================================================================
<xsl:variable name="css">@import url("wsdl-viewer.css");</xsl:variable>
-->
<xsl:variable name="css">
<![CDATA[
/**
	wsdl-viewer.css
*/

/**
=========================================
	Body
=========================================
*/
html {
	background-color: teal;
}

body {
	margin: 0;
	padding: 0;
	height: 100%;
	height: auto;
	color: black;
	background-color: teal;
	font: normal 80%/120% 'Open Sans', Arial, Helvetica, sans-serif;
}

#services {
    width: 450px;
    background-color: white;
    border: 1px solid navy;
    overflow: auto;
    position: fixed;
    font-family: 'Open Sans';
    color: #262626;
    top: 101px;
    bottom: 0px;
}

.porttitle {
    margin: 5px 10px 5px 10px;
    padding: 5px;
    font-size: 14pt;
    letter-spacing: 1px;
    cursor: pointer;

}

.porttitle .portbold { font-weight: bold; }

.portcontent {
	margin: 2px 0 2px 20px;
	width: 100%;
}
.portcontent .label {
    text-align: left;
}

.ports {
    margin-left: 10px;
    margin-bottom: 10px;
    font-size: 16pt;
    letter-spacing: 1px;
    width: 30%;
    align: left;
    padding-bottom: 10px;
    border-bottom: 1px solid #262626;
    color: #262626;
    
}

.padder {
    padding: 7px;
    margin: 0;
}

/**
=========================================
	Fixed box with links
=========================================
*/
#outer_links { 
	position: fixed;
	left: 0px;
	top: 0px;
	margin: 3px;
	padding: 1px;
	z-index: 200; 
	width: 180px;
	height: auto;
	background-color: gainsboro;
	padding-top: 2px;
	border: 1px solid navy;
}

* html #outer_links /* Override above rule for IE */ 
{ 
	position: absolute; 
	width: 188px;
	top: expression(offsetParent.scrollTop + 0); 
} 

#links {
	margin: 1px;
	padding: 3px;
	background-color: white;
	height: 350px;
	overflow: auto;
	border: 1px solid navy;
}

#links ul {
	left: -999em;
	list-style: none;
	margin: 0;
	padding: 0;
	z-index: 100;
}

#links li {
	margin: 0;
	padding: 2px 4px;
	width: auto;
	z-index: 100;
}

#links ul li {
	margin: 0;
	padding: 2px 4px;
	width: auto;
	z-index: 100;
}

#links a {
	display: block;
	padding: 0 2px;
	color: blue;
	width: auto;
	border: 1px solid white;
	text-decoration: none;
	white-space: nowrap;
}

#links a:hover {
	color: white;
	background-color: gray;
	border: 1px solid gray;
} 


/**
=========================================
	Navigation tabs
=========================================
*/

#outer_nav {
	background-color: yellow;
	padding: 0;
	margin: 0;
}

#nav {
	height: 100%;
	width: auto;
	margin: 0;
	padding: 0;
	background-color: gainsboro;
	border-top: 1px solid gray;
	border-bottom: 3px solid gray;
	z-index: 100;
	font: bold 90%/120% Arial, Helvetica, sans-serif;
	letter-spacing: 2px;
} 

#nav ul { 
	background-color: gainsboro;
	height: auto;
	width: auto;
	list-style: none;
	margin: 0;
	padding: 0;
	z-index: 100;

	border: 1px solid silver; 
	border-top-color: black; 
	border-width: 1px 0 9px; 
} 

#nav li { 
	display: inline; 
	padding: 0;
	margin: 0;
} 

#nav a { 
	position: relative;
	top: 3px;
	float:left; 
	width:auto; 
	padding: 8px 10px 6px 10px;
	margin: 3px 3px 0;
	border: 1px solid gray; 
	border-width: 2px 2px 3px 2px;

	color: black; 
	background-color: silver; 
	text-decoration:none; 
	text-transform: uppercase;
}

#nav a:hover { 
	margin-top: 1px;
	padding-top: 9px;
	padding-bottom: 7px;
	color: blue;
	background-color: gainsboro;
} 

#nav a.current:link,
#nav a.current:visited,
#nav a.current:hover {
	background: white; 
	color: black; 
	text-shadow:none; 
	margin-top: 0;
	padding-top: 11px;
	padding-bottom: 9px;
	border-bottom-width: 0;
	border-color: red; 
}

#nav a:active { 
	background-color: silver; 
	color: white;
} 



/**
=========================================
	Content
=========================================
*/
#header {
    font-family: 'Open Sans';
    padding: 0;
	color: black;
	background: url(data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB3aWR0aD0iNDBweCIgaGVpZ2h0PSI0MHB4IiB2aWV3Qm94PSIwIDAgNDAgNDAiIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDQwIDQwIiB4bWw6c3BhY2U9InByZXNlcnZlIj4KICAgIDxyZWN0IHg9IjAiIHk9Ii0wLjEyNSIgZmlsbD0iI0ZGRkZGRiIgd2lkdGg9IjQwIiBoZWlnaHQ9IjQwLjEyNSIvPgogICAgPHJlY3QgeD0iMTguMjA0IiB5PSItMy45NzciIHRyYW5zZm9ybT0ibWF0cml4KDAuNzA3MSAwLjcwNzEgLTAuNzA3MSAwLjcwNzEgMjUuMDg4NiAtMTAuODU5NikiIGZpbGw9IiNDRkNGQ0YiIHdpZHRoPSIxNC44OTYiIGhlaWdodD0iNTcuNjYiLz4KICAgIDxwb2x5Z29uIGZpbGw9IiNDRkNGQ0YiIHBvaW50cz0iLTkuNTIsMzAuNjE5IC0yMC44MzMsMTkuMzA1IDE5LjkzOCwtMjEuNDY2IDMwLjg0MiwtOS44MTIgIi8+Cjwvc3ZnPgo=);
	background-size: 5px;
	border: 1px solid darkred;
	height: 100px;
	position: fixed;
    left: 0px;
    right: 0px;
}

#header #headertitle {
    float: left;
    font-size: 23pt;
    letter-spacing: 2px;
    height: 100%;
    padding-top: 65px;
    padding-left: 10px;
    vertical-align: bottom;
}

#header #namespace {
    height: 100%;
    font-size: 12pt;
    float: right;
    margin-right: 1em;
    text-align: right;
    padding-top: 70px;
}

#content {
	padding: 101px 20px 0 470px;
	background-color: white;
}

#content .anchor {
    display: block;
    height: 105px;
    margin-top: -105px;
    visibility: hidden;
}

#operations_title {
    font-family: 'Open Sans';
    width: 97%;
    padding-bottom: 10px;
    margin-top: 20px;
    margin-bottom: 20px;
    margin-left: 20px;
    font-size: 16pt;
    color: #262626;
    border-bottom: 1px solid #262626;
}

.operation_title {
    font-family: 'Open Sans';
    font-size: 12pt;
    margin-bottom: 10px;
    margin-top: 10px;
    padding-bottom: 10px;
}

.messageparts {
    list-style: disc; 
}

#footer {
	clear: both;
	margin: 0;
	padding: .5em 2em;
	color: gray;
	background-color: gainsboro;
	font-size: 80%;
	border-top: 1px dotted gray;
	text-align: right
}

.single_column {
	padding: 10px 10px 10px 10px;
	/*margin: 0px 33% 0px 0px; */
	margin: 3px 0;
}

#flexi_column {
	padding: 10px 10px 10px 10px;
	/*margin: 0px 33% 0px 0px; */
	margin: 0px 212px 0px 0px;
}

#fix_column {
	float: right;
	padding: 10px 10px 10px 10px;
	margin: 0px;
	width: 205px;
	/*width: 30%; */
	voice-family: "\"}\"";
	voice-family:inherit;
	/* width: 30%; */
	width: 205px;
}
html>body #rightColumn {
	width: 205px; /* ie5win fudge ends */
} /* Opera5.02 shows a 2px gap between. N6.01Win sometimes does.
	Depends on amount of fill and window size and wind direction. */

/**
=========================================
	Label / value
=========================================
*/

.page {
	margin: 0 20px 0 0;
	padding: 10px 0 20px 0;
}

.value, .label {
	margin: 0;
	padding: 0;
}

.label {
    float: left;
	width: 145px;
	text-align: right;
	font-weight: bold;
	padding-bottom: .5em;
	margin-right: 0;
	color: darkblue;
}

.label a {
    margin-left: 0;
    float: left;
}


.description_label {
    margin: 20px 0 10px 10px;
    padding-bottom: 10px;
    border-bottom: 1px solid;
    width: 30%;
	font-size: 16pt;
	letter-spacing: 1px;
	color: #262626;
}

.description_value {
    margin-left: 10px;
    padding-bottom: .5em;    
    padding-top: 5px;
    padding-bottom: 2em;
    font-size: 11pt;
    line-height: 14pt;
}

.operations_label {
    font-weight: bold;
    letter-spacing: 1px;
    text-align: left;
    color: darkblue;
}


.value {
	margin-left: 147px;
	color: darkblue;
	padding-bottom: .5em;
	word-wrap: break-word;
}

.operations_list {
    color: darkblue;
}

strong, strong a {
	color: darkblue;
	font-weight: bold;
	letter-spacing: 1px;
	margin-left: 2px;
}


/**
=========================================
	Links
=========================================
*/

a.local:link,
a.local:visited {
	color: blue; 
	margin-left: 0;
	border-bottom: 1px dotted blue;
	text-decoration: none;
	font-style: italic;
}

a.local:hover {
	background-color: gainsboro; 
	color: darkblue;
	padding-bottom: 1px;
	border-bottom: 1px solid darkblue;
}

a.target:link,
a.target:visited,
a.target:hover
{
	text-decoration: none;
	background-color: transparent;
	border-bottom-type: none;
}

/**
=========================================
	Box, Shadow
=========================================
*/

.box {
	padding: 14px;
	margin-bottom: 26px;
	margin-top: 6px;
	line-height: 1.5em;
	color: black;
	background-color: #e9eff7;
	border: 1px dotted gray;
}

.shadow {
	background: silver;
	position: relative;
	top: 5px;
	left: 4px;
}

.shadow div {
	position: relative;
	top: -5px;
	left: -4px;
}

/**
=========================================
	Floatcontainer
=========================================
*/

.spacer
{
	display: block;
	height: 0;
	font-size: 0;
	line-height: 0;
	margin: 0;
	padding: 0;
	border-style: none;
	clear: both; 
	visibility:hidden;
}

.floatcontainer:after {
	content: ".";
	display: block;
	height: 0;
	font-size:0; 
	clear: both;
	visibility:hidden;
}
.floatcontainer{
	display: inline-table;
} /* Mark Hadley's fix for IE Mac */ /* Hides from IE Mac \*/ * 
html .floatcontainer {
	height: 1%;
}
.floatcontainer{
	display:block;
} /* End Hack 
*/ 

/**
=========================================
	Source code
=========================================
*/

.xml-element, .xml-proc, .xml-comment {
	margin: 2px 0;
	padding: 2px 0 2px 0;
}

.xml-element {
	word-spacing: 3px;
	color: #cf3030;
	font-weight: bold;
	font-style:normal;
	border-left: 1px dotted silver;
}

.xml-element div {
	margin: 2px 0 2px 20px;
}

.xml-att {
	color: blue;
	font-weight: bold;
}

.xml-att-val {
	color: blue;
	font-weight: normal;
}

.xml-proc {
	color: darkred;
	font-weight: normal;
//	font-style: italic;
}

.xml-comment {
	color: green;
	font-weight: normal;
//	font-style: italic;
}

.xml-text {
	color: green;
	font-weight: normal;
	font-style: normal;
}


/**
=========================================
	Heading
=========================================
*/
h1, h2, h3 {
	margin: 10px 10px 2px;
	font-family: 'Open Sans', Georgia, Times New Roman, Times, Serif;
	font-weight: normal;
	}

h1 {
	font-weight: bold;
	letter-spacing: 3px;
	font-size: 220%;
	line-height: 100%;
}

h2 {
	font-weight: bold;
	font-size: 175%;
	line-height: 200%;
}

h3 {
	font-size: 150%;
	line-height: 150%;
//	font-style: italic;
}

/**
=========================================
	Content formatting
=========================================
*/
.port {
	margin-bottom: 10px;
	padding-bottom: 10px;
	border-bottom: 1px dashed gray;
}

.operation {
	margin-bottom: 20px;
	padding-bottom: 10px;
	border-bottom: 1px dashed gray;
}


/* --------------------------------------------------------
	Printing
*/

/*
@media print
{
	#outer_links, #outer_nav { 
		display: none;
	}
*/

	#outer_box {
		padding: 3px;
	}
/* END print media definition
}
*/

/**
=========================================
	Fonts
=========================================
*/

@font-face {
    font-family: 'Open Sans';
    font-style: normal;
    font-weight: 100;
    src: local('Open Sans Light'),url('OpenSans-Light.ttf') format('woff');
}

@font-face {
    font-family: 'Open Sans';
    font-style: bold;
    font-weight: 100;
    src: local('Open Sans Semibold'),url('OpenSans-Semibold.ttf') format('woff');
}

]]>
</xsl:variable>

</xsl:stylesheet>
