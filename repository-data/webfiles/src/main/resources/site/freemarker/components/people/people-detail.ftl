<#include "../../include/imports.ftl">

<section id="barrister-detail" class="wrapper">
<#if document??>
	<@hst.link var="img" hippobean=document.imagelink/>
	
	<div class="inner">
		<header class="align-center">
			<h2>${document.name}</h2>
			<p>${document.calldate}</p>
			<p><@fmt.formatDate value=document.calldate type="Date" pattern="YYYY-MM-dd" /></p>
		</header>
		<p>
			<span class="image left round">
				<img src="${img}" alt="${document.name}">
			</span>
		<p>${document.profile}</p>
	</div>
</#if>
</section>