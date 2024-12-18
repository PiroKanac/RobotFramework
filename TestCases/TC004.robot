*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  SeleniumLibrary
Library  Collections

*** Variables ***

*** Test Cases ***
TC_004 Conditionaly Run Keywords
    ${var}=     set variable    YES
    run keyword if    '${var}'=='YES'   log to console    Value Found
    run keyword if    '${var}'=='NO'   log to console    Value Not Found
