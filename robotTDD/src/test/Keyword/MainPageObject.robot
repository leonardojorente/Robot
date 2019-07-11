*** Settings ***
Documentation  This keywords are related to the main page screen
Library        Selenium2Library


*** Variables ***
${SIGN IN BUTTON}  xpath://*[@title='Log in to your customer account']

*** Keywords ***
Click sign in button
    wait until element is visible  ${SIGN IN BUTTON}
    click element                  ${SIGN IN BUTTON}