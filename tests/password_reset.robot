*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Valid Password Reset
    [Documentation]    Test the valid password reset functionality.
    Open Browser    http://example.com/reset    chrome
    Input Text    id=email    user@example.com
    Click Button    id=reset-button
    Page Should Contain    A reset link has been sent to your email.