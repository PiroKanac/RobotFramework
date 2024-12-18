*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/Resources1.robot

*** Variables ***
${Browser}  Chrome
${URL}  https://www.thetestingworld.com/testings/

*** Test Cases ***
TC_007 Define Keywords and Arguments & Return Value
    [Documentation]  This Test Case is for using Arguments from Resources and using it in the test case and also to get title and return its value to input field
    ${Res}  Start Browser and Maximize  ${URL}  ${Browser}
     #set selenium speed    10seconds
     log     ${Res}
    input text    name:fld_username     ${Res}







