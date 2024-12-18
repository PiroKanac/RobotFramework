*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://www.thetestingworld.com/testings/

*** Test Cases ***
TC_001 Browser Start and Close
    open browser    ${URL}    ${Browser}
    maximize browser window
    wait until page contains    Register
    #set selenium speed    2seconds
    Enter Username Password Email   testing    testingworldindia@gmail.com    123456
    #execute javascript    window.scrollTo(0,1000)
    capture page screenshot     C:/Users/niri/PycharmProjects/TestProject001/TestCases/TC001.png
    close browser
*** Keywords ***
Enter Username Password Email
    [Arguments]    ${username}  ${email}    ${password}
    input text    name:fld_username    ${username}
    input text    name:fld_email    ${email}
    input text    name:fld_password     ${password}


