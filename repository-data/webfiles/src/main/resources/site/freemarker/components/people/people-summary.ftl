<#include "../../include/imports.ftl">

<#if pageable?? && pageable.items?has_content>
	<section id="one" class="wrapper style1 special">
		<div class="inner">
			<header>
				<h2>Ipsum Feugiat</h2>
				<p>Semper suscipit posuere apede</p>
			</header>

<ul>
  <#list document.properties?keys as prop>
    <li>${prop} = ${document.getProperty(prop)}</li>
  </#list>
</ul>
			
			<div class="flex flex-2">
				<#list pageable.items as item>
				    <@hst.manageContent hippobean=item/>
					<@hst.link var="link" hippobean=item/>
					<@hst.link var="img" hippobean=item.imagelink/>
					
					<div class="box person">
						<div class="image round">
							<a href="${link}"><img src="${img}" /></a>
						</div>

						<#if item.name ??>
							<h3>${item.name?html}</h3>
						</#if>
						
						<#if item.content??>
							<p><@hst.html contentRewriter=contentRewriter hippohtml=item.content/></p>
						</#if>
					</div>
				</#list>	
			</div>
		</div>
	</section>
</#if>