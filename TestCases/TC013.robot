*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/Resources1.robot

*** Variables ***
${Browser}  Chrome
${URL}  https://www.thetestingworld.com/testings/

*** Test Cases ***
TC_013 Data Driven Testing
    open browser    ${var1} Chrome
    maximize browser window
    click element    xpath://a[text()='Login']

    ${row}= Read Number of Rows     Test

    :FOR    ${i}    IN RANGE    1   ${row}+1
    \   ${username}=    Read Excel Data of Cell     Test    ${i}    1
    \   ${password}=    Read Excel Data of Cell     Test    ${i}    2
    \   input text    id:username    ${username}
    \   input text    id:password    ${password}
    \   click button    xpath://button[@type='submit']
    \   sleep    5 seconds




