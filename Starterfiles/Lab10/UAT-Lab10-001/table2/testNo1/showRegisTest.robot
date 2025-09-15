*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SERVER}         localhost:7272
${BROWSER}        edge
${REGISTRATION URL}    http://${SERVER}/Lab3/Registration.html
${DELAY}          0

*** Test Cases ***
Open Registration Page
    Open Browser    ${REGISTRATION URL}    ${BROWSER}
    Set Selenium Speed    ${DELAY}

Registration Page Should Be Open
    Location Should Be    ${REGISTRATION URL}
    Title Should Be    Event Registration
	
	