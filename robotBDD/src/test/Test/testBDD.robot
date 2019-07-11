*** Settings ***
Documentation  This is a basic test using BDD
Library        Selenium2Library
Library        String
Resource       ../Keyword/Support.robot
Resource       ../Keyword/BasicPageObject.robot
Resource       ../Keyword/MainPageObject.robot
Resource       ../Keyword/LoginPageObject.robot
Resource       ../Keyword/CreateAccountPageObject.robot
Resource       ../Keyword/BDDConfig.robot
Variables      ../Variables/Variables.py

Suite Setup     open browser and maximize  ${URL}  Chrome
Suite Teardown  Close Browser
*** Variables ***

*** Test Cases ***

Testcase1: Create new account
     ${emailId}     Generate Random String    2
     ${email}       Set Variable    test${emailId}@gmail.com

     #As an application user
     #I want to create a new user account
     #So that my user should appear as logged

     Given the user is in the main screen
     When the user click the loggin button
     And fill the email with "test${emailId}@gmail.com"
     And click the create account button
     And fill the all the basic fields with "FirstNameTest" "LastNameTest" "PasswordTest" "AddressTest" "Campinas" "Arizona" "12345" "United States" "551999999999"
     And click register button
     Then I should see the logged user on the screen as "FirstNameTest LastNameTest"

*** Keywords ***

Given the user is in the main screen
    Verify the homepage title

When the user click the loggin button
    Click sign in button

And fill the email with "${EMAIL}"
    Insert email  ${EMAIL}

And click the create account button
    Click Create account button

And fill the all the basic fields with "${FIRSTNAME}" "${LASTNAME}" "${PASSWORD}" "${ADDRESS}" "${CITY}" "${STATE}" "${ZIPCODE}" "${COUNTRY}" "${PHONE}"
    Click title check button
    Insert first name           ${FIRSTNAME}
    Insert last name            ${LASTNAME}
    Insert password             ${PASSWORD}
    Insert address              ${ADDRESS}
    Insert City                 ${CITY}
    Select State                ${STATE}
    Insert Zip Code             ${ZIPCODE}
    Select Country              ${COUNTRY}
    Insert Mobile Phone         ${PHONE}

And click register button
    Click Register Button

Then I should see the logged user on the screen as "${FIRST LAST NAME}"
    Check logged user  ${FIRST LAST NAME}


