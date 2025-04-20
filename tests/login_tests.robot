*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://example.com/login
${USERNAME}    test_user
${PASSWORD}    correct_password

*** Test Cases ***
Successful Login Test
    Open Browser    ${URL}    chrome
    Input Text    username_field    ${USERNAME}
    Input Text    password_field    ${PASSWORD}
    Click Button    login_button
    Page Should Contain    Welcome, ${USERNAME}
    Close Browser