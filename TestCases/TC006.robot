*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/Resources1.robot


*** Variables ***
${Browser}  Chrome
${URL}  https://www.thetestingworld.com/testings/

*** Test Cases ***
TC_006 Define Keywords and Arguments
    Start Browser and Maximize  ${URL}  ${Browser}
     #set selenium speed    10seconds
    input text    name:fld_username     HelloWorld




