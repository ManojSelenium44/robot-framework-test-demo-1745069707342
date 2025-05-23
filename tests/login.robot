*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Successful Login Test
    [Documentation]    This test case verifies that a user can successfully log in with valid credentials.
    Open Browser    https://example.com/login    chrome
    Input Text    id=username    valid_user
    Input Text    id=password    valid_password
    Click Button    id=login
    Page Should Contain    Welcome, valid_user