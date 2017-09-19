*** Setting ***
Library    Selenium2Library
Library    RequestsLibrary
Library    Collections
Library    String

Test Template    GETAPI

*** Variables ***

*** Test Cases ***
Get Requests Customers by keyword A17105
    /customers?access_token=&keyword=A17105
# Get Requests Customers All
#     /customers?access_token=&keyword=
*** Keywords ***
GETAPI
    [Arguments]    ${Path}
    Create Session    venus    http://venus:3000
    ${resp}=    Get Request    venus    ${PATH}
    Should Be Equal As Strings    ${resp.status_code}    200
    Should Not Be Empty    ${resp.json()}
    Log    ${resp.content}
    ${json}=    evaluate    json.loads('''${resp.content}''')    json
    # Log To Console    ${json["data"][0]["ar_code"]}
    ${sele}=    Convert to string    ${json["data"][0]["ar_code"]}
    ${sele1}=    Strip String    ${sele}
    ${only value}=    Convert to string    A17105
    # Log To Console    ${sele}
    # Log To Console    ${sele1}
    # Log To Console    ${only value}
    Should Be Equal As Strings    ${sele1}    A17105
    # Log To Console    ${sale1}


    # ${Customers list}=    Get from Dictionary    ${resp.json()}    data
    # Length should be    ${Customers list}    10
