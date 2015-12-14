::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::      Dev environment startup script for Alfresco Community     ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off

set springloadedfile=C:\tools\springloaded-1.2.3.RELEASE.jar

if not exist %springloadedfile% (
  mvn validate -Psetup
)

set MAVEN_OPTS=-javaagent:"%springloadedfile%" -noverify -Xms256m -Xmx2G

mvn clean install -Prun -nsu
:: mvn install -Prun 
