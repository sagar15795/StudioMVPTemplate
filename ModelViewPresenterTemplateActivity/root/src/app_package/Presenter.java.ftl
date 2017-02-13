package ${packageName};

<#if applicationPackage??>
import ${applicationPackage}.ui.base.BasePresenter;
</#if>

public class ${className}Presenter extends BasePresenter<${className}Contract.View> implements ${className}Contract.Presenter{
	
}