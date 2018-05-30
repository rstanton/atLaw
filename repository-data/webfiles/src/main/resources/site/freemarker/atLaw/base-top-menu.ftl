<#include "../include/imports.ftl">

<#-- @ftlvariable name="menu" type="org.hippoecm.hst.core.sitemenu.HstSiteMenu" -->
<#-- @ftlvariable name="editMode" type="java.lang.Boolean"-->

<@hst.setBundle basename="essentials.global"/> 
<@fmt.message key="sitename" var="siteName"/>

<@hst.link var="home" siteMapItemRefId="root"/>

<#if menu??>
	<header id="header">
		<div class="has-edit-button">
		  <#if menu.siteMenuItems??>
			<div class="inner">
				<a href="${home}" class="logo">${siteName}</a>
				<nav id="nav">
					<#list menu.siteMenuItems as item>
						<#if item.hstLink??>
							<#assign href><@hst.link link=item.hstLink/></#assign>
						<#elseif item.externalLink??>
							<#assign href>${item.externalLink?replace("\"", "")}</#assign>
						</#if>
		          		<#if  item.selected || item.expanded>
		            		<a href="${href}">${item.name?html}</a>
		          		<#else>
		            		<a href="${href}">${item.name?html}</a>
		          		</#if>
					</#list>
				</nav>
				<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
			  	<@hst.cmseditmenu menu=menu/>
			</div>
		  </#if>
		</div>
	</header>
</#if>