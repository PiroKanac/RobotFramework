*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/Resources1.robot
Test Setup    Start Browser and Maximize   ${URL}  ${Browser}
Test Teardown    Close Browser Window
Suite Setup    Before Each Test Suite
Suite Teardown    After Each Test Suite

*** Variables ***
${Browser}  Chrome
${URL}  https://www.thetestingworld.com/testings/

*** Test Cases ***
TC_008_1 Setup & Tear Down First Test Case
    [Tags]    Smoke
    input text    name:fld_username     Testing
    input text    name:fld_email    testingworldindia@gmail.com
    input text    name:fld_password     123456

TC_008_2 Setup & Tear Down Second Test Case
    [Tags]    Sanity
    select radio button    add_type     office






