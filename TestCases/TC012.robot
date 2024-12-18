*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/Resources1.robot

*** Variables ***
${Browser}  Chrome
${URL}  https://www.thetestingworld.com/testings/

*** Test Cases ***
TC_012 Case in BDD Format
    Given   Start Browser and Maximize  ${URL}  ${Browser}
    When    Create Folder and Runtime    ABCD   XYZM
    Then    Concatenate Username and Password    Testing    World








