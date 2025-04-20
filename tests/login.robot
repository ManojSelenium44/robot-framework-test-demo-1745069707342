*** Settings ***
*** Test Cases ***
Invalid Username Test
    [Template]    Login With Invalid Credentials
    invalid_user    password123

Invalid Password Test
    [Template]    Login With Invalid Credentials
    test_user    wrong_password

Empty Username Test
    [Template]    Login With Invalid Credentials
    ${EMPTY}    password123

Empty Password Test
    [Template]    Login With Invalid Credentials
    test_user    ${EMPTY}