<#include "../../include/imports.ftl">

<section id="main" class="wrapper">
<#if document??>
	<@hst.link var="img" hippobean=document.imagelink/>
	<#assign profile=document.profile/>
	<div class="inner">
		<header class="align-center">
			<h2>${document.name}</h2>
			<p>Some Text</p>			
		</header>
		<p>
			<span class="image left">
				<img src="${img}" alt="${document.name}"/>
			</span>
			<@hst.html hippohtml=document.cv/>
		</p>
	</div>
</#if>
</section>
