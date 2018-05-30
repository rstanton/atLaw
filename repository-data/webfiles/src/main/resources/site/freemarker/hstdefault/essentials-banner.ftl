<#include "../include/imports.ftl">

<#-- @ftlvariable name="document" type="com.stanton.wcms.beans.Banner" -->
<#if document??>
<div class="row></div>
<div>
	<a href="<@hst.link hippobean=document.link />">
    	<figure style="position: relative">
      		<@hst.manageContent hippobean=document parameterName="document" rootPath="banners"/>
      		<img src="<@hst.link hippobean=document.image.banner />" alt="${document.title?html}"/>
       		<#if document.title??>
         		<h3>${document.title?html}</h3>
       		</#if>
	   		<@hst.html hippohtml=document.content/>
   		</figure>
  </a>
</div>
<#elseif editMode>
<div>
  <figure style="position: relative">
    <@hst.manageContent templateQuery="new-banner-document" parameterName="document" rootPath="banners"/>
    <img src="<@hst.link path='/images/essentials/catalog-component-icons/banner.png'/>"> Click to edit Banner
  </figure>
</div>
</#if>
