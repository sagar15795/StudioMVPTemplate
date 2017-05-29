<?xml version="1.0"?>
<recipe>
	<#assign m = ""/>
	<#list className?split("(?<=[a-z])(?=[A-Z])","r") as x><#assign m = m + x+"/" /></#list>

	<mkdir at="${escapeXmlAttribute(srcOut)}/${m}"/>

	<instantiate from="src/app_package/Contract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${m}/${className}Contract.java" />
	<instantiate from="src/app_package/MvpView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${m}/${className}Activity.java" />
	<instantiate from="src/app_package/Presenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${m}/${className}Presenter.java" />


	<open file="${srcOut}/${m}/${className}Presenter.java"/>
</recipe>