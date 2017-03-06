package ${packageName};

<#if applicationPackage??>
import ${applicationPackage}.data.DataManager;
import ${applicationPackage}.ui.base.BasePresenter;
</#if>

import rx.Subscription;

public class ${className}Presenter extends BasePresenter<${className}Contract.View> implements ${className}Contract.Presenter{
    private static final String TAG = ${className}Presenter.class.getSimpleName();

    private static ${className}Presenter instance = null;

    private Subscription mSubscriptions;
    private DataManager mDataManager;

    private ${className}Presenter(DataManager dataManager) {
          mDataManager = dataManager;
    }

    public static ${className}Presenter get${className}Presenter(DataManager dataManager) {
        if (instance == null) {
            instance = new ${className}Presenter(dataManager);
        }
        return instance;
    }

    @Override
    public void attachView(${className}Contract.View mvpView) {
        super.attachView(mvpView);
    }

    @Override
    public void detachView() {
        super.detachView();
        if (mSubscriptions != null) mSubscriptions.unsubscribe();

    }

}
