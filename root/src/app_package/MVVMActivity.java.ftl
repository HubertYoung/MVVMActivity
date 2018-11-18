package ${packageName};

import ${superClassFqcn};
import android.os.Bundle;
<#if includeCppSupport!false>
import android.widget.TextView;
</#if>

/**
* <br>
* function:
* <p>
* @author:HubertYoung
* @date:${date} ${time}
* @since:V${version}
* @desc:${packageName}
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
        return R.layout.${layoutName};
    }

    @Override
    protected void loadData() {

    }

    @Override
    public void initToolBar() {

    }
   
}
