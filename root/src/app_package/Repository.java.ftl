package ${packageName}.${repositoryPackage};

import com.hubertyoung.common.CommonApplication;
import com.hubertyoung.common.api.Api;
import com.hubertyoung.common.api.HostType;
import com.hubertyoung.common.base.AbsRepository;
import ${packageName}.BuildConfig;
import com.hubertyoung.common.net.transformer.DefaultTransformer;
import com.hubertyoung.environmentswitcher.EnvironmentSwitcher;
import io.reactivex.Flowable;


public class ${repositoryName} extends AbsRepository {

    public Flowable< User > requestHttp() {
        return Api.getDefault( HostType.MY_RESULT )
            .getRetrofitClient()
            .setBaseUrl( EnvironmentSwitcher.getMineEnvironment( CommonApplication.getAppContext(), BuildConfig.DEBUG) )
            .builder( ApiDynamicService.class )
            .requestHttp( )
            .compose( new DefaultTransformer() );
    }

}