*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  SeleniumLibrary
Library  Collections

*** Variables ***

*** Test Cases ***
TC_003 For loop test
  @{List1}  create list    Hello    22  23.23   World   Abcd1234
  FOR    ${i}  IN RANGE    1   10
  log to console    ${i}
  END

  FOR    ${i}  IN   @{List1}
  log to console    ${i}
  END