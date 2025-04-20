*** Keywords ***
Login With Invalid Credentials
    [Arguments]    ${username}    ${password}
    Log    Attempting to log in with username: ${username} and password: ${password}
    # Add actual login implementation here

Login With Empty Fields
    Log    Attempting to log in with empty fields
    # Add actual login implementation here