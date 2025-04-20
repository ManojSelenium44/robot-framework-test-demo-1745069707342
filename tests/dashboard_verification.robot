*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://example.com/dashboard

*** Test Cases ***
Dashboard Verification Test
    [Documentation]    This test verifies the dashboard's title and the presence of a specific element.
    Open Browser    ${URL}    chrome
    Title Should Be    Dashboard - Example
    Page Should Contain Element    xpath=//div[@id='dashboard']
    Close Browser