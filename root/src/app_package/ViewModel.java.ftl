package ${packageName}.${viewModlelPackage};

import android.app.Application;

import com.hubertyoung.common.base.AbsViewModel;
import com.hubertyoung.common.baserx.RxSubscriber;

import com.hubertyoung.common.utils.display.ToastUtil;
import ${packageName}.${repositoryPackage}.${repositoryName}Repository;

import androidx.annotation.NonNull;


public class ${viewModlelName} extends AbsViewModel< ${repositoryName}Repository >  {

    public ${viewModlelName}( @NonNull Application application ) {
        super( application );
    }

    public void requestHttp() {
        addDisposable( mRepository.requestHttp( )
                .subscribeWith( new RxSubscriber< * >() {
                    @Override
                    protected void showLoading() {
                        showDialogLoading( "" );
                    }

                    @Override
                    protected void finishLoading() {
                        stopLoading();
                    }

                    @Override
                    public void onSuccess( * obj ) {
 //                       sendData( DynamicConstants.EVENT_KEY_DYNAMIC_ALL_CHANNEL, user );
                    }

                    @Override
                    public void onFailure( String msg ) {
                        ToastUtil.showError( msg );

                    }
                } ) );
    }
}