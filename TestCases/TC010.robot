*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/Resources1.robot

*** Variables ***
${Browser}  Chrome
${URL}  https://www.thetestingworld.com/testings/

*** Test Cases ***
TC_010 User Defined Keywords using Python Scripting
    Create Folder and Runtime   RobotFRM    Testing
    open browser    ${URL}  ${Browser}
    maximize browser window








