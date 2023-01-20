# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library                DataDriver                  reader_class=TestDataApi    name=bear.csv
Resource               ../resources/common.robot
Suite Setup            Setup Browser
Suite Teardown         End suite
Library                QVision
Test Template          Check Bears


*** Test Cases ***
Check Bears with ${name} ${gender}

*** Keywords ***
Check Bears
    [Arguments]        ${name}                     ${gender}
    ${itsthere}        IsNoText                    View Profile
    Run Keyword If     ${itsthere}                 Login to sandbox
    VerifyText         Map
    VerifyText         Satellite
    VerifyText         D520                        timeout=5
    TypeText           Search for bears            ${name}\n
    VerifyText         ${name}                     anchor=${gender}

Login to sandbox
    [Documentation]    Login to Salesforce instance
    GoTo               ${login_url}
    TypeText           Username                    ${username}                 delay=1
    TypeText           Password                    ${mo_password}
    ClickText          Log In