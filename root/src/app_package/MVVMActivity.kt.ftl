package ${escapeKotlinIdentifiers(packageName)}

import ${superClassFqcn}
import android.os.Bundle
<#if includeCppSupport!false>
import kotlinx.android.synthetic.main.${layoutName}.*
import com.hubertyoung.common.base.AbsLifecycleActivity


<#if generateMVVM>
class ${activityClass} : AbsLifecycleActivity<*>() {
<#else>
class ${activityClass} : ${superClass}() {
</#if>
    override fun getLayoutId(): Int = R.layout.${activityLayout}

    override fun loadData() {

    }

    override fun initToolBar() {

    }
<#include "../../../../common/jni_code_usage.kt.ftl">
    }
<#include "../../../../common/jni_code_snippet.kt.ftl">

}
