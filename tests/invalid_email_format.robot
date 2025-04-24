*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Invalid Email Format Test
    [Documentation]  Verify system rejects invalid email formats and displays appropriate error message.
    Input Valid Data Except Email
    Input Invalid Email
    Click Save Button
    Verify Error Message

*** Keywords ***
Input Valid Data Except Email
    Input Text  id=name  Valid Name
    Input Text  id=phone  1234567890
    Input Text  id=company  Valid Company
    Input Text  id=position  Valid Position

Input Invalid Email
    Input Text  id=email  invalidemail.com

Click Save Button
    Click Button  id=save

Verify Error Message
    Element Should Contain  id=email-error  Invalid email format