*** Settings ***
Library    SeleniumLibrary
Variables  resources/testData.py
Variables  resources/locators.py

*** Variables ***
${BROWSER}    chrome

*** Keywords ***
Sign Up Test
    Open Browser    ${BASE_URL}    ${BROWSER}
    Click Element   ${SIGNUP_BUTTON}
    Sleep           2s
    Input Text      ${SIGNUP_USERNAME}    ${USERNAME}
    Input Text      ${SIGNUP_PASSWORD}    ${PASSWORD}
    Click Element   ${SIGNUP_CONFIRM_BUTTON}
    Sleep           3s
    Handle Alert    ACCEPT

Log In Test

    Click Element   ${LOGIN_BUTTON}
    Sleep           2s
    Input Text      ${LOGIN_USERNAME}    ${USERNAME}
    Input Text      ${LOGIN_PASSWORD}    ${PASSWORD}
    Click Element   ${LOGIN_CONFIRM_BUTTON}
    Sleep           4s
    Page Should Contain Element    ${LOGIN_WELCOME_TEXT}

Log Out Test
    Click Element   ${LOGOUT_BUTTON}
    Sleep           2s
    Page Should Contain    Log in
    Close Browser