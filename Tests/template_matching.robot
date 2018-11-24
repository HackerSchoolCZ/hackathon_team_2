*** Settings ***
Resource	../Keywords/template_matching_keywords.robot
Test Setup    Open Browser And Go To Page
Test Teardown    Close Browser

*** Variables ***
${url}    http://www.alza.cz
${browser}    chrome

*** Test Cases ***
Test  
    ${Template}=    Normalize Path    ${CURDIR}/../Resources/Templates/
    ${TestOutput}=    Normalize Path    ${CURDIR}/../TestOutput/
    ${TestData}=    Normalize Path    ${CURDIR}/../Resources/TestData/screenshot.png  
    Capture Page Screenshot    ${TestData}    
    Find Image    ${TestData}    ${Template}/Template_1.png    ${TestOutput}/img.png

*** Keywords *** 
       