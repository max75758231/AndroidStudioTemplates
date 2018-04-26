<?xml version="1.0"?>
<recipe>
	<merge from="res/values/styles.xml.ftl" 
            to="${escapeXmlAttribute(resOut)}/values/styles.xml" />
    <merge from="AndroidManifest.xml.ftl"
            to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
            
	<copy from="res/drawable/background_splash.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/drawable/background_splash.xml" />

    <instantiate from="res/layout/activity_splash.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/layout/activity_splash.xml" />
    <instantiate from="src/app_package/App.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/App.java" />
    <instantiate from="src/app_package/SplashActivity.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/SplashActivity.java" />
    
    <open file="${srcOut}/App.java"/>
</recipe>