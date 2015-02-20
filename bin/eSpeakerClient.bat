@echo off
::#########################################################################
:: Copyright (C) 2000-2006 DFKI GmbH.
:: Copyright (C) 2009 Tang Research.
:: All rights reserved. Use is subject to license terms.
::
::#########################################################################
:: Set the Mary base installation directory in an environment variable:

set MARY_BASE=$INSTALL_PATH
set CLASSPATH="%MARY_BASE%\java\maryclient.jar;%MARY_BASE%\java\java-diff.jar;%MARY_BASE%\java\jacob.jar;%MARY_BASE%\java\freetts.jar"

cd $INSTALL_PATH\bin

java -ea -cp %CLASSPATH% -Dserver.host=localhost %1 %2 %3 %4 %5 %6 %7 %8 %9 de.dfki.lt.mary.client.MaryClientGUICustomized
