*** Settings ***
Library    ../Libraries/library.py
Library    SeleniumLibrary  
Library    OperatingSystem  

*** Keywords ***
Open Browser And Go To Page
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    
Find Template On Screenshot
    [Arguments]    ${file_name}  
    ${Template}=    Normalize Path    ${CURDIR}/../Resources/Templates/
    ${TestOutput}=    Normalize Path    ${CURDIR}/../TestOutput/
    ${TestData}=    Normalize Path    ${CURDIR}/../Resources/TestData/screenshot.png  
    Capture Page Screenshot    ${TestData}    
    Find Image    ${TestData}    ${Template}/${file_name}    ${TestOutput}/${file_name}   