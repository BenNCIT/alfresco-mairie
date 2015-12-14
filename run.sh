#!/bin/bash
# Downloads the spring-loaded lib if not existing and runs the full all-in-one
# (Alfresco + Share + Solr) using the runner project
springloadedfile=C:\\tools\\springloaded-1.2.3.RELEASE.jar

if [ ! -f $springloadedfile ]; then
mvn validate -Psetup
fi
MAVEN_OPTS="-javaagent:$springloadedfile -noverify -Xms256m -Xmx2G" mvn clean install -Prun