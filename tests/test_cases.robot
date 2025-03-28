*** Settings ***
Resource    resources/resources.robot

*** Test Cases ***
Sign Up Test
    Open Browser    ${BASE_URL}    ${BROWSER}
    Click Element   ${SIGNUP_BUTTON}
    Sleep           1s
    Input Text      ${SIGNUP_USERNAME}    ${USERNAME}
    Input Text      ${SIGNUP_PASSWORD}    ${PASSWORD}
    Click Element   ${SIGNUP_CONFIRM_BUTTON}
    Sleep           2s
    Handle Alert    ACCEPT
    Close Browser

Log In Test
    Open Browser    ${BASE_URL}    ${BROWSER}
    Click Element   ${LOGIN_BUTTON}
    Sleep           1s
    Input Text      ${LOGIN_USERNAME}    ${USERNAME}
    Input Text      ${LOGIN_PASSWORD}    ${PASSWORD}
    Click Element   ${LOGIN_CONFIRM_BUTTON}
    Sleep           3s
    Page Should Contain Element    ${LOGIN_WELCOME_TEXT}
    Close Browser

Log Out Test
    Open Browser    ${BASE_URL}    ${BROWSER}
    Click Element   ${LOGIN_BUTTON}
    Sleep           1s
    Input Text      ${LOGIN_USERNAME}    ${USERNAME}
    Input Text      ${LOGIN_PASSWORD}    ${PASSWORD}
    Click Element   ${LOGIN_CONFIRM_BUTTON}
    Sleep           3s
    Click Element   ${LOGOUT_BUTTON}
    Sleep           2s
    Page Should Contain    Log in
    Close Browser
