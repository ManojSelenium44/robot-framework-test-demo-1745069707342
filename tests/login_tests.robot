*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://example.com/login

*** Test Cases ***
Successful Login With Dashboard Title And User Summary Table Verification
    Open Browser    ${URL}    Chrome
    Input Text    username_field    valid_username
    Input Text    password_field    valid_password
    Click Button    login_button
    Title Should Be    Dashboard - Example
    Should Be True    Element Should Be Visible    user_summary_table