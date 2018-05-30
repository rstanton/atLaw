<#include "../../include/imports.ftl">

<#if pageable?? && pageable.items?has_content>
	<section id="people-summary" class="wrapper">
		<div class="inner">
			<#assign size=pageable.items?size/>

			<div class="flex flex-${size}">
				<#list pageable.items as item>
				    <@hst.manageContent hippobean=item/>
					<@hst.link var="link" hippobean=item/>
					<@hst.link var="img" hippobean=item.imagelink.largesquare/>
					
					
					<div class="box fit person">
						<div class="image">
							<a href="${link}"><img src="${img}"/></a>
						</div>
				
						<#if item.name ??>
							<h3 class="align-center"><a href="${link}">${item.name?html}</a></h3>
						</#if>
						
						<#if item.intro??>
							<p><@hst.html hippohtml=item.intro/></p>
						</#if>
					</div>
				</#list>	
			</div>
		</div>
	</section>
</#if>