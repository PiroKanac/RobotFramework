*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/Resources1.robot

*** Variables ***
${Browser}  Chrome
${URL}  https://www.thetestingworld.com/testings/

*** Test Cases ***
TC_011 User Defined Keywords with Argument and Return
    Concatenate Username and Password   Testing    World
    open browser    ${URL}  ${Browser}
    maximize browser window








