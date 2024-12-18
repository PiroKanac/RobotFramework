*** Settings ***
Library     SeleniumLibrary
Library     RequestsLibrary


*** Variables ***
${Base_URL}  https://www.thetestingworldapi.com/
${StudentID}    10509723

*** Test Cases ***
TC_015 Get Request & Validate Status Code
    Create Session    Get_Student_Details   ${Base_URL}
    ${response}=    get request    Get_Student_Details  api/studentsDetails
    log to console    ${response.status_code}
    log to console    ${response.content}

    ${response2}=    get request    Get_Student_Details  api/studentsDetails/${StudentID}
    ${actual_code}=     convert to string    ${response2.status_code}
    should be equal    ${actual_code}   200
    log to console    ${response2.content}

