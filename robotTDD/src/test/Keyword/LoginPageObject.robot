*** Settings ***
Documentation  This keywords are related to the login screen
Library        Selenium2Library

*** Variables ***
${EMAIL}          xpath://*[@id='email_create']
${SUBMIT CREATE}  xpath://*[@id='SubmitCreate']

*** Keywords ***
Insert email
  [Arguments]  ${email input}
    wait until element is visible  ${EMAIL}
    input text                     ${EMAIL}  ${email input}

Click Create account button
    wait until element is visible  ${SUBMIT CREATE}
    click element                  ${SUBMIT CREATE}
