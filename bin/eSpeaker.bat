@echo off

:: ####################################################################
:: Copyright (C) 2000-2006 DFKI GmbH.
:: Copyright (C) 2009 Tang Research.
:: All rights reserved. Use is subject to license terms.
::
::#########################################################################
:: Set the Mary base installation directory in an environment variable:
set MARY_BASE=C:\Documents and Settings\Administrator\Desktop\New Folder\openReporter


set SHPROT_BASE=%MARY_BASE%\lib\modules\shprot
set PATH=%MARY_BASE%\lib\windows;%PATH%

set CLASSPATH="%MARY_BASE%\java\eReporter.jar;%MARY_BASE%\java\mary-common.jar;%MARY_BASE%\java\log4j-1.2.8.jar;%MARY_BASE%\java\java-diff.jar;%MARY_BASE%\java\jacob.jar;%MARY_BASE%\java\freetts.jar"

cd $INSTALL_PATH\bin

java -ea -Xms40m -Xmx512m -cp %CLASSPATH% "-Dmary.base=%MARY_BASE%" "-Djava.endorsed.dirs=%MARY_BASE%\lib\endorsed" %1 %2 %3 %4 %5 %6 %7 %8 %9 de.dfki.lt.mary.Mary
