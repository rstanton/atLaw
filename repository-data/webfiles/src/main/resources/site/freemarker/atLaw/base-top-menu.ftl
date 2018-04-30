<#include "../include/imports.ftl">

<#-- @ftlvariable name="menu" type="org.hippoecm.hst.core.sitemenu.HstSiteMenu" -->
<#-- @ftlvariable name="editMode" type="java.lang.Boolean"-->

<#if menu??>
<div class="has-edit-button">
  <#if menu.siteMenuItems??>
	<div class="inner">
		<a href="index.html" class="logo">Family Law</a>
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
	</div>

	<#-- Original code below -->
    <#-- <ul class="nav nav-pills">
      <#list menu.siteMenuItems as item>
        <#if !item.hstLink?? && !item.externalLink??>
          <#if item.selected || item.expanded>
            <li class="active"><div style="padding: 10px 15px;">${item.name?html}</div></li>
          <#else>
            <li><div style="padding: 10px 15px;">${item.name?html}</div></li>
          </#if>
        <#else>
          <#if item.hstLink??>
            <#assign href><@hst.link link=item.hstLink/></#assign>
          <#elseif item.externalLink??>
            <#assign href>${item.externalLink?replace("\"", "")}</#assign>
          </#if>
          <#if  item.selected || item.expanded>
            <li class="active"><a href="${href}">${item.name?html}</a></li>
          <#else>
            <li><a href="${href}">${item.name?html}</a></li>
          </#if>
        </#if>
      </#list>
    </ul> -->
  </#if>
  <@hst.cmseditmenu menu=menu/>
</div>
</#if>