package ${packageName};

<#if applicationPackage??>
import ${applicationPackage}.R;
import ${applicationPackage}.data.DataManager;
</#if>

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;

import butterknife.ButterKnife;

public class ${className}Activity extends AppCompatActivity implements ${className}Contract.View {
	
    private ${className}Presenter m${className}Presenter;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_${className?lower_case});
        ButterKnife.bind(this);

        m${className}Presenter = ${className}Presenter.get${className}Presenter(DataManager.getDataManger());
        m${className}Presenter.attachView(this);


    }	
}
