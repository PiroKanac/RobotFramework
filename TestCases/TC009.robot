*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://www.thetestingworld.com/testings/

*** Test Cases ***
TC_009 Robot Fetch Data
    open browser    ${URL}  ${Browser}
    maximize browser window
    ${ActualURL}=   get location
    log    ${ActualURL}
    ${PageHTML}=    get source
    log    ${PageHTML}
    ${Attr}=    get element attribute    name:fld_username  class
    log    ${Attr}
    ${cnt}=     get element count    class:field
    log    ${cnt}







