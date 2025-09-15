*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SERVER}         localhost:7272
${BROWSER}        edge
${REGISTRATION URL}    http://${SERVER}/Lab3/Registration.html
${DELAY}          0.25

*** Test Cases ***
Open Registration Page
    Open Browser    ${REGISTRATION URL}    ${BROWSER}
    Set Selenium Speed    ${DELAY}

Registration Page Should Be Open
    Location Should Be    ${REGISTRATION URL}
    Title Should Be    Event Registration

Register Success No Organization Info
    Input Text    name=firstname    Somsri
    Input Text    name=lastname     Sodsai
    Input Text    name=email        somsri@kkumail.com
    Input Text    name=phone        081-001-1234
    Click Button    Register

    Title Should Be    Success
