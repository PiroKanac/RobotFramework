*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***
${var1}  http://robotframework.org

*** Test Cases ***
TC_005 Handle Multiple Tabs
    open browser    ${var1}     Chrome
    maximize browser window
    click element    //a[text()='robotframework.org/rpa']




