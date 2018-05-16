<!doctype html>
<#include "../include/imports.ftl">
<@hst.setBundle basename="essentials.homepage"/>

<!--
	Theory by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title><@fmt.message key="homepage.title" var="title"/>${title?html}</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
        
		<link rel="stylesheet" href="<@hst.webfile path="/css/main.css"/>" type="text/css"/>
		<@hst.headContributions categoryIncludes="htmlHead" xhtml=true/>
	</head>
	<body class="subpage">

		<!-- Header -->
		<@hst.include ref="menu"/>

		<@hst.include ref="main"/>
		
		<!-- Footer -->
		<@hst.include ref="footer"/>

		<!-- Scripts -->
		<script src="<@hst.webfile path="/js/jquery.min.js"/>"></script>
		<script src="<@hst.webfile path="/js/skel.min.js"/>"></script>
		<script src="<@hst.webfile path="/js/util.js"/>"></script>
		<script src="<@hst.webfile path="/js/main.js"/>"></script>

		<@hst.headContributions categoryIncludes="htmlBodyEnd" xhtml=true/>
	</body>
</html>

