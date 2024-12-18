*** Settings ***
Library     SeleniumLibrary
Library     RequestsLibrary
Library    JSONLibrary
Library     Collections



*** Variables ***
${Base_URL}  https://www.thetestingworldapi.com/
${StudentID}    10509723

*** Test Cases ***
TC_016 Validate content using JSON Path
    Create Session    Get_Student_Details   ${Base_URL}
    ${response}=    get request    Get_Student_Details  api/studentsDetails/${StudentID}
    ${actual_code}=     convert to string    ${response.status_code}
    should be equal    ${actual_code}   200

    ${json_res}=    to json    ${response.content}

    @{first_name_list}     get value from json  ${json_res}     data.first_name
    ${first_name}=  get from list   ${first_name_list}  0
    log to console    ${first_name}
    should be equal    ${first_name}    Mr.

    @{last_name_list}     get value from json  ${json_res}     data.last_name
    ${last_name}=  get from list   ${last_name_list}  0
    log to console    ${last_name}
    should be equal    ${last_name}    Wisozk
