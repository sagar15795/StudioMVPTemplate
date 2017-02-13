package ${packageName};
<#if applicationPackage??>

import ${applicationPackage}.ui.base.MvpView;
</#if>

public interface ${className}Contract{
	
	interface View extends MvpView {

	}

	interface Presenter {

	}
}