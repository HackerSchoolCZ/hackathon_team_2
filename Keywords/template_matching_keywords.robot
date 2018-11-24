*** Settings ***
Library    ../Libraries/library.py
Library    SeleniumLibrary  
Library    OperatingSystem  

*** Keywords ***
Open Browser And Go To Page
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
         