package ${packageName}.${activityPackage};

import com.hubertyoung.common.base.AbsLifecycleActivity;

/**
* <br>
* function:
* <p>
* @author:HubertYoung
* @date:${date} ${time}
* @since:V${version}
* @desc:${packageName}.${activityPackage}
*/

<#if generateMVVM>
public class ${activityClass} extends AbsLifecycleActivity< ${viewModlelName} > {
<#else>
public class ${activityClass} extends AbsLifecycleActivity{
</#if>
<#include "../../../../common/jni_code_usage.java.ftl">
<#include "../../../../common/jni_code_snippet.java.ftl">

 	@Override
    protected int getLayoutId() {
        return R.layout.${activityLayout};
    }

    @Override
    protected void loadData() {

    }

    @Override
    public void initToolBar() {

    }
   
}
