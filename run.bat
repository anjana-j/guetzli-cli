@echo OFF

set SetupDir=./images

for /r "%SetupDir%" %%i in (*.*) do (
    echo %%~fi
    guetzli %%~fi ./compressed/%%~ni%%~xi
)