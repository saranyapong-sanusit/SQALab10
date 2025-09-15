*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SERVER}         localhost:7272
${BROWSER}        edge
${REGISTRATION URL}    http://${SERVER}/Lab10/Registration.html
${DELAY}          0.25

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
    Input Text    name=email        somsri@kkumail.com
    Input Text    name=phone        1234
    Click Button    Register

    Location Should Be    ${REGISTRATION URL}
    Title Should Be       Event Registration
    Page Should Contain     *Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678)