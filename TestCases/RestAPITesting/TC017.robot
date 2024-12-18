*** Settings ***
Library     SeleniumLibrary
Library     RequestsLibrary
Library    JSONLibrary
Library     Collections



*** Variables ***
${Base_URL}  https://reqres.in

*** Test Cases ***
TC_017 Get Request with Parameters
    Create Session    Get_Param   ${Base_URL}
    ${param}=   create dictionary    page=2
    ${response}=    get request    Get_Param    /api/users  params=${param}
    log to console    ${response.status_code}
    log to console    ${response.contentcd}

