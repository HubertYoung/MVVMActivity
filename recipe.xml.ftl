<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />
    <@kt.addAllKotlinDependencies />

        <instantiate from="root/res/layout/activity_mvvm.xml.ftl"
                     to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(activityLayout)}.xml" />
        <open file="${escapeXmlAttribute(resOut)}/layout/${activityLayout}.xml" />

        <instantiate from="root/src/app_package/MVVMActivity.${ktOrJavaExt}.ftl"
                     to="${escapeXmlAttribute(srcOut)}/${activityPackage?replace('.', '/')}/${activityClass}.${ktOrJavaExt}" />

        <open file="${escapeXmlAttribute(srcOut)}/${activityPackage?replace('.', '/')}/${activityClass}.${ktOrJavaExt}" />

        <instantiate from="root/src/app_package/ViewModel.${ktOrJavaExt}.ftl"
                     to="${escapeXmlAttribute(srcOut)}/${viewModelPackage?replace('.', '/')}/${viewModelClass}.${ktOrJavaExt}" />
        <open file="${escapeXmlAttribute(srcOut)}/${viewModelPackage?replace('.', '/')}/${viewModelClass}.${ktOrJavaExt}" />

        <instantiate from="root/src/app_package/Repository.${ktOrJavaExt}.ftl"
                     to="${escapeXmlAttribute(srcOut)}/${repositoryPackage?replace('.', '/')}/${repositoryClass}.${ktOrJavaExt}" />
        <open file="${escapeXmlAttribute(srcOut)}/${repositoryPackage?replace('.', '/')}/${repositoryClass}.${ktOrJavaExt}" />


</recipe>
