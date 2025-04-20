*** Settings ***
*** Test Cases ***
Invalid Login Test
    [Template]    Login With Invalid Credentials
    invalid_user    password123
    test_user    wrong_password
    ${EMPTY}    password123
    test_user    ${EMPTY}

Empty Field Test
    [Template]    Login With Empty Fields
    ${EMPTY}    ${EMPTY}
    invalid_user    ${EMPTY}
    test_user    ${EMPTY}