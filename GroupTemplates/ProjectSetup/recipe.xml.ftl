<?xml version="1.0"?>
<recipe>
	<merge from="build.gradle.ftl"
             to="${escapeXmlAttribute(projectOut)}/build.gradle" />
</recipe>