<#include "../../include/imports.ftl">

<#if pageable?? && pageable.items?has_content>
	<section id="one" class="wrapper style1 special">
		<div class="inner">
			<header>
				<h2>Ipsum Feugiat</h2>
				<p>Semper suscipit posuere apede</p>
			</header>
			
			<div class="flex flex-2">
				<#list pageable.items as item>
				    <@hst.manageContent hippobean=item/>
					<@hst.link var="link" hippobean=item/>
					
					<div class="box person">
						<div class="image round">
							<a href="${link}"><img src="images/pic03.jpg" alt="Person 1" /></a>
						</div>

						<#if item.name ??>
							<h3>${item.name?html}</h3>
						</#if>
						<#if item.fullname ??>
							<h3>${item.fullname?html}</h3>
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