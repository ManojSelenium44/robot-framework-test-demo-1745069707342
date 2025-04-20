*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://example.com/login
${USERNAME}    valid_user
${PASSWORD}    valid_password

*** Test Cases ***
Successful Login Test
    [Documentation]    This test case verifies that a user can successfully log in with valid credentials.
    Open Browser    ${URL}    chrome
    Input Text    username_field    ${USERNAME}
    Input Text    password_field    ${PASSWORD}
    Click Button    login_button
    Page Should Contain    Welcome, ${USERNAME}
    Close Browser