*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN URL}    http://example.com/login
${BROWSER}    Chrome

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    Login Page

Login With Invalid Credentials
    [Arguments]    ${username}    ${password}
    Input Text    id:username    ${username}
    Input Text    id:password    ${password}
    Click Button    id:login
    Wait Until Element Is Visible    id:login_error

*** Test Cases ***
Invalid Login Test
    [Documentation]    Verify login fails with invalid credentials.
    [Tags]    Negative
    Open Browser To Login Page
    Login With Invalid Credentials    invalid_user    password123
    Login With Invalid Credentials    test_user    wrong_password
    Login With Invalid Credentials    ${EMPTY}    password123
    Login With Invalid Credentials    test_user    ${EMPTY}
    Close Browser