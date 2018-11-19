package ${escapeKotlinIdentifiers(packageName)}.${escapeKotlinIdentifiers(activityPackage)}

import ${escapeKotlinIdentifiers(packageName)}.R

<#if generateMVVM>
class ${activityClass} : AbsLifecycleActivity< ${viewModlelName} >() {
<#else>
class ${activityClass} : AbsLifecycleActivity< * >() {
</#if>
    override fun getLayoutId(): Int = R.layout.${activityLayout}

    override fun loadData() {

    }

    override fun initToolBar() {

    }

}
