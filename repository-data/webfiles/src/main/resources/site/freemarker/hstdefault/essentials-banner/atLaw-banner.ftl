<#include "../../include/imports.ftl">
<section id="banner" style="background-image: url('<@hst.link hippobean=document.image.banner />');">
	<#if document??>
		<!--<img src="<@hst.link hippobean=document.image.banner />" alt="${document.title?html}"/>-->
		<#if document.title??>
			<h1>${document.title?html}</h1>
		<#else>
			<h1>Not Title</h1>
		</#if>
		
		<#if document.content??>
			<@hst.html hippohtml=document.content/>
		<#else>
			<p>Please add some banner content!</p>
		</#if>
	</#if>
</section>