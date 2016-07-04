<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

	<#if !appCompat && !(hasDependency('com.android.support:support-v4'))>
	        <dependency mavenUrl="com.android.support:support-v4:${buildApi}.+"/>
	    </#if>

	<#if appCompat && !(hasDependency('com.android.support:appcompat-v7'))>
	       <dependency mavenUrl="com.android.support:appcompat-v7:${buildApi}.+" />
	</#if>

	<#if (buildApi gte 22) && appCompat && !(hasDependency('com.android.support:design'))>
	    <dependency mavenUrl="com.android.support:design:${buildApi}.+" />
	</#if>

    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
    <merge from="res/values/strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <merge from="res/values/dimens.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/dimens.xml" />
    <merge from="res/values-w820dp/dimens.xml"
             to="${escapeXmlAttribute(resOut)}/values-w820dp/dimens.xml" />

    <merge from="res/values/colors.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/colors.xml" />

	<copy from="root/res/drawable-hdpi"
            to="${escapeXmlAttribute(resOut)}/drawable-hdpi" />

	<instantiate from="root/res/drawable/tab_home.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/drawable/tab_home.xml" />
	<instantiate from="root/res/drawable/tab_cate.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/drawable/tab_cate.xml" />
	<instantiate from="root/res/drawable/tab_my.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/drawable/tab_my.xml" />

	<instantiate from="root/src/app_package/OnTabReselectListener.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/OnTabReselectListener.java" />
	<instantiate from="root/src/app_package/FragmentStateTabHost.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/widget/FragmentStateTabHost.java" />

	<instantiate from="root/src/app_package/MainActivity.java.ftl"
     	to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
	<instantiate from="root/res/layout/activity_main.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml" />

	<instantiate from="root/src/app_package/CateFragment.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/fragment/CateFragment.java" />
	<instantiate from="root/res/layout/fragment_cate.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/layout/fragment_cate.xml" />

	<instantiate from="root/src/app_package/MyFragment.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/fragment/MyFragment.java" />
	<instantiate from="root/res/layout/fragment_my.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/layout/fragment_my.xml" />

	<instantiate from="root/src/app_package/HomeFragment.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/fragment/HomeFragment.java" />
	<instantiate from="root/res/layout/fragment_home.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/layout/fragment_home.xml" />

	<instantiate from="root/src/app_package/TabEnum.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/TabEnum.java" />

	<instantiate from="root/res/layout/tab_indicator.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/layout/tab_indicator.xml" />

	<instantiate from="root/res/color/selector_tab_color.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/color/selector_tab_color.xml" />

	<open file="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml"/>        

 	<open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
</recipe>
