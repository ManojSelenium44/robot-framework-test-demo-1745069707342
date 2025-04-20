*** Keywords ***
Login As Valid User
    [Arguments]    ${username}    ${password}
    Open Browser To Login Page
    Input Text    id:username    ${username}
    Input Text    id:password    ${password}
    Click Button    id:login
    Wait Until Page Contains    Welcome