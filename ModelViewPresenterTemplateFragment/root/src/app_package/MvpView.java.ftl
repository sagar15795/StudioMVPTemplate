package ${packageName};

<#if applicationPackage??>
import ${applicationPackage}.R;
import ${applicationPackage}.data.DataManager;
</#if>

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import butterknife.ButterKnife;

public class ${className}Fragment extends Fragment implements ${className}Contract.View {

	${className}Presenter m${className}Presenter;

	 @Override
    	public void onCreate(@Nullable Bundle savedInstanceState) {
        	super.onCreate(savedInstanceState);
		m${className}Presenter = ${className}Presenter.get${className}Presenter(DataManager.getDataManger());
    	}

	 @Override
    	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {

        View rootView = inflater.inflate(R.layout.fragment_${className?lower_case}, container, false);

        ButterKnife.bind(this, rootView);

        m${className}Presenter.attachView(this);
    }

	
}
