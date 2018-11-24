*** Settings ***
Resource	../Keywords/template_matching_keywords.robot
Test Setup    Open Browser And Go To Page
Test Teardown    Close Browser

*** Variables ***
${url}    http://www.alza.cz
${browser}    chrome

*** Test Cases ***
Find All Templates On Screenshot
    [Template]    Find Template On Screenshot
    Template_1.png
    Template_2.png
    Template_3.png  

*** Keywords *** 
       