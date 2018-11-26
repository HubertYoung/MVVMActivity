<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
<#include "root://activities/common/recipe_manifest.xml.ftl" />

    <instantiate from="root/res/layout/activity_mvvm.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml"/>

<#if generateViewModel>
    <instantiate from="root/src/app_package/vm/ViewModel.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/vm/${shortName}ViewModel.${ktOrJavaExt}"/>

    <open file="${escapeXmlAttribute(srcOut)}/vm/${shortName}ViewModel.${ktOrJavaExt}"/>

    <instantiate from="root/src/app_package/source/Repository.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/source/${shortName}Repository.${ktOrJavaExt}"/>

    <open file="${escapeXmlAttribute(srcOut)}/source/${shortName}Repository.${ktOrJavaExt}"/>
</#if>

    <instantiate from="root/src/app_package/activity/VMActivity.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/activity/${activityClass}.${ktOrJavaExt}"/>

    <open file="${escapeXmlAttribute(srcOut)}/activity/${activityClass}.${ktOrJavaExt}"/>
</recipe>
