@echo OFF

set SetupDir=./images

for /r "%SetupDir%" %%i in (*.*) do (
    echo %%~fi
    guetzli --quality 100 --verbose %%~fi ./compressed/%%~ni.jpg
)
