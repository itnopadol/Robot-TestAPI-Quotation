*** Settings ***
Library    Selenium2Library
Library    RequestsLibrary
Library    Collections
Library    String

Test Template    GETAPI

*** Valiables ***


*** Test Cases ***
Get Requests Item by ItemCode 2120050
    /item?access_token=&item_code=2120050

*** Keywords ***
GETAPI
    [Arguments]    ${Path}
    Create Session    venus    http://venus:3000
    ${resp}=    Get Request    venus    ${PATH}
    Should Be Equal As Strings    ${resp.status_code}    200
    Should Not Be Empty    ${resp.json()}
    Log     ${resp.content}
