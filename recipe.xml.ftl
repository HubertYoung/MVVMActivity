<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />
    <@kt.addAllKotlinDependencies />

 <instantiate from="root/res/layout/activity_mvvm.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(activityLayout)}.xml" />

<#if generateMVVM>

    <instantiate from="root/src/app_package/IContract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${contractName}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${contractName}.java" />

     <instantiate from="root/src/app_package/Model.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${viewModlelName}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${viewModlelName}.java" />

     <instantiate from="root/src/app_package/Presenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${presenterName}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${presenterName}.java" />
    
</#if>


<#if generateKotlin>
  
    <instantiate from="root/src/app_package/MVVMActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.kt" />
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.kt" />
<#else>
    <instantiate from="root/src/app_package/MVVMActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

</#if>

</recipe>
