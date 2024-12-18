*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***

*** Test Cases ***
TC_002 Variable Test
   @{List1}  create list    Hello    22  23.23   World   Abcd1234
   ${list_lenght}   get length    ${List1}
   log to console    ${list_lenght}
   ${list_data}=    get from list   ${List1}    3
   log to console    ${list_data}