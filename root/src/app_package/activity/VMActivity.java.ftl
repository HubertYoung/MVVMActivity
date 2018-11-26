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
public class ${activityClass} extends AbsLifecycleActivity< ${shortName}ViewModel > {
<#else>
public class ${activityClass} extends AbsLifecycleActivity{
</#if>
    @Override
    protected int getLayoutId() {
        return R.layout.${layoutName};
    }

    @Override
    protected void loadData() {

    }

    @Override
    public void initToolBar() {

    }
}

