:: Script para ejecutarse en Windows
:: Realizado por Jota Lopez
@echo off
setlocal enabledelayedexpansion

for %%f in (work-test-p*.rkt) do (
    echo .....................
    echo running %%f
    set "tempFile=temp_output.txt"
    racket "%%f" > "!tempFile!" 2>&1
    set "result="
    for /f "usebackq delims=" %%r in ("!tempFile!") do (
        set "result=!result!%%r\n"
    )
    
    if "!result!"=="" (
        echo Test succeeded
    ) else (
        echo Test failed with error: 
        type "!tempFile!"
    )
    echo .....................
    del "!tempFile!" 2>nul
)

endlocal
