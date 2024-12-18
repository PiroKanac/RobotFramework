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
    ${statuscode}=  convert to string    ${response.status_code}
    should be equal    ${statuscode}    200

    ${jsonresponse}=    to json    ${response.content}
    @{name_list}=   get value from json     ${jsonresponse}     data[0].first_name
    ${name}=    get from list    ${name_list}   0
    should be equal    ${name}  Michael

