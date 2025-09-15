*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SERVER}         localhost:7272
${BROWSER}        edge
${REGISTRATION URL}    http://${SERVER}/Lab10/Registration.html
${DELAY}          0

*** Test Cases ***
Open Registration Page
    Open Browser    ${REGISTRATION URL}    ${BROWSER}
    Set Selenium Speed    ${DELAY}

Registration Page Should Be Open
    Location Should Be    ${REGISTRATION URL}
    Title Should Be    Event Registration
	
Empty First Name
    Input Text    name=firstname    Somsri
    Input Text    name=lastname     Sodsai
    Input Text    name=organization    CS KKU
    Input Text    name=phone        081-001-1234
    Click Button    Register

    Location Should Be    ${REGISTRATION URL}
    Title Should Be       Event Registration
    Page Should Contain     *Please enter your email!!

