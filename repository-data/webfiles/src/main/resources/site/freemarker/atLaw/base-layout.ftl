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
	<body>

		<!-- Header -->
		<header id="header">
			<@hst.include ref="menu"/>
		</header>

		<@hst.include ref="main"/>
		
		<!-- Footer -->
		<footer id="footer">
			<@hst.include ref="footer"/>
		</footer>

		<!-- Scripts -->
		<script src="<@hst.webfile path="/js/jquery.min.js"/>"></script>
		<script src="<@hst.webfile path="/js/skel.min.js"/>"></script>
		<script src="<@hst.webfile path="/js/util.js"/>"></script>
		<script src="<@hst.webfile path="/js/main.js"/>"></script>

		<@hst.headContributions categoryIncludes="htmlBodyEnd" xhtml=true/>
	</body>
</html>


<#--
<html lang="en">
  <head>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="<@hst.webfile  path="/css/bootstrap.css"/>" type="text/css"/>
    <#if hstRequest.requestContext.cmsRequest>
      <link rel="stylesheet" href="<@hst.webfile  path="/css/cms-request.css"/>" type="text/css"/>
    </#if>
    <@hst.headContributions categoryExcludes="htmlBodyEnd, scripts" xhtml=true/>
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-md-offset-3">
          <@hst.include ref="top"/>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6 col-md-offset-3">
          <@hst.include ref="menu"/>
        </div>
      </div>
      <div class="row">
        <@hst.include ref="main"/>
      </div>
      <div class="row">
        <@hst.include ref="footer"/>
      </div>
    </div>
    <@hst.headContributions categoryIncludes="htmlBodyEnd, scripts" xhtml=true/>
  </body>
</html>
-->

