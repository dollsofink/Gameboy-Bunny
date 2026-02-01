rem Copy all files, to new folder

@echo off
SETLOCAL EnableDelayedExpansion

:: Prompt the user for the file path
SET "inputPath="
SET /P "inputPath=Please enter the file or folder path (drag and drop also works): "

:: Remove surrounding quotes in case of drag and drop
SET "inputPath=!inputPath:"=!"

:: Check if the path is valid (optional, but recommended)
IF NOT EXIST "!inputPath!" (
    ECHO Error: The specified path does not exist.
    PAUSE
    EXIT /B 1
)

:: Use the path in your script (example: display the path)
ECHO The path you entered is: "!inputPath!"
:: You can now use !inputPath! in other commands, e.g., DIR "!inputPath!"

robocopy ../ !inputPath! /E /ZB /COPYALL /DCOPY:DAT

PAUSE