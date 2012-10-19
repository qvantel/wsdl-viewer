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
* wsdl-viewer-js.xsl
* Author: Antti Samila
* ====================================================================
* Description:
* 		web page client side code
* ====================================================================
-->

<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.w3.org/1999/xhtml">

<!--
==================================================================
	JS
==================================================================
-->
<xsl:variable name="js">
<![CDATA[
function collapse(element) {
    element.attr('class', 'collapsed');
    element.children('path').attr('d', "M0,16V0l8,8L0,16z");
}

function expand(element) {
    element.attr('class', 'expanded');
    element.children('path').attr('d', "M0,8h16l-8,8L0,8z");
    
}

$(document).ready(function() {
    $(".porttitle").click(function() {
        var portid = "#port-" + $(this).attr('id').match(/(\w+)$/gm);
        var svg = $(this).children('svg').first();
        console.log(svg);
        if (svg.is(".expanded")) {
            collapse(svg);
        } else {
            expand(svg);
        }
        $(this).next(".portcontent").slideToggle(100);
        $(portid).slideToggle(100);
    });
});
]]>
</xsl:variable>

</xsl:stylesheet>
