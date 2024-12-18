*** Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeywords/UserKeywords.py




*** Variables ***



*** Keywords ***
Start Browser and Maximize
    [Documentation]     This Keyword is for Start Browser and Maximize its Window, Get and Return title value
    [Arguments]    ${UserURL}   ${InputBrowser}
    open browser    ${UserURL}  ${InputBrowser}
    maximize browser window

Close Browser Window
    ${Title}=   get title
    log    ${Title}
    [Return]    ${Title}
    close browser

Before Each Test Suite
    log    Before Each Test Suite

After Each Test Suite
    log    After Each Test Suite

Create Folder and Runtime
    [Arguments]    ${foldername}   ${subfoldername}
    create_folder   ${foldername}
    create_sub_folder   ${subfoldername}

Concatenate Username and Password
    [Arguments]   ${username}   ${password}
    ${resultval}=   concatenate_two_values  ${username}   ${password}
    log    ${resultval}
