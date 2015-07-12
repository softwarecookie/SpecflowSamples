@ECHO OFF
IF "%1."=="." GOTO UsageLabel
IF "%2."=="." GOTO UsageLabel
IF "%3."=="." GOTO UsageLabel
IF "%4."=="." GOTO UsageLabel
set nunitconsoleExePath=%~1
set specflowExePath=%~2
set testContainerDllPath=%~3
set testProjectFilePath=%~4

if Exist TestResult.trx del TestResult.trx 

"%nunitconsoleExePath%" /labels /out=TestResult.txt /xml=TestResult.xml %testContainerDllPath%
"%specflowExePath%" nunitexecutionreport "%testProjectFilePath%" /out:TestResult.html /xsltFile:Reporting\NUnitExecutionReport\NUnitExecutionReport.xslt

@echo Created file TestResult.html

GOTO End

:UsageLabel
@echo "USAGE :\n GenerateSpecflowTestExecutionReport.bat <nunit-consolepath> <specflowexepath> <testcontainerdllpath> <testprojectpath>"
GOTO End

:End