<?xml version="1.0"?>
<recipe>

    <#if isLibrary>
        <merge from="build.gradle.ftl"
                to="${escapeXmlAttribute(projectOut)}/build.gradle" />

        <instantiate from="res/layout/activity_rating_library.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/layout/activity_rating.xml" />

        <instantiate from="res/layout/activity_rating_default.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/layout/activity_rating.xml" />

        <instantiate from="src/app_package/RatingActivityLibrary.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/RatingActivity.java" />
    </#if>

    <#if !isLibrary>
    	<instantiate from="src/app_package/RatingActivityDefault.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/RatingActivity.java" />
    </#if>

    <merge from="AndroidManifest.xml.ftl"
                to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
    
    <open file="${srcOut}/RatingActivity.java"/>
</recipe>