@echo off
cd /d %~dp0
REM 文字コードをUTF-8に設定
chcp 65001

for /r %%A in (*.md) do (
    echo %%A

    pandoc -f markdown -t html "%%A" -s -o "%%~dpnA.html"
    del /Q %%A
    REM pandoc -f markdown -t docx "%%A" -s -o "%%~dpnA.docx"
 
    REM ↑必要な方を使えばいいし、両方使っても良い
    REM フォーマットの種類は以下を参照
    REM http://pandoc.org/MANUAL.html
    REM     [Options] - [General options]
)
 
exit /b
