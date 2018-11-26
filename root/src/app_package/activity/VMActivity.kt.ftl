package ${packageName}.activity;

import com.hubertyoung.common.base.AbsLifecycleActivity;

import ${superClassFqcn};
<#if generateViewModel>
import ${packageName}.vm.${shortName}ViewModel;
</#if>
<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>

/**
* desc: ${activityClass}
* @author:HubertYoung
* @date: ${.now?string("yyyy/MM/dd HH:mm")}
* @since:
<#if generateViewModel>
* @see ${shortName}ViewModel
</#if>
*/
<#if generateViewModel>
class ${activityClass} : AbsLifecycleActivity< ${shortName}ViewModel > {
<#else>
class ${activityClass} : AbsLifecycleActivity<*>{
class ${activityClass} : BaseActivity<${activityClass}Binding>(){
</#if>

	override fun getLayoutId(): Int = R.layout.${layoutName}

    override fun loadData() {

    }

    override fun initToolBar() {

    }
}
