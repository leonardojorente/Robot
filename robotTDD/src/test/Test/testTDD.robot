*** Settings ***
Documentation  This is a basic test using TDD
Library        Selenium2Library
Library        String
Resource       ../Keyword/Support.robot
Resource       ../Keyword/BasicPageObject.robot
Resource       ../Keyword/MainPageObject.robot
Resource       ../Keyword/LoginPageObject.robot
Resource       ../Keyword/CreateAccountPageObject.robot
Variables      ../Variables/Variables.py

Suite Setup     open browser and maximize  ${URL}  Chrome
Suite Teardown  Close Browser
*** Variables ***

*** Test Cases ***

Testcase1:Create new account
    [Documentation]                As a user I can create a new account

    #to inspect elements, use f12 + ctrl+F
    ${emailId}     Generate Random String    2
    ${email}       Set Variable    test${emailId}@gmail.com

    Verify the homepage title
    Click sign in button

    #Loggin Screen
    Insert email                ${email}
    Click Create account button

    #Create account screen
    Click title check button
    Insert first name           FirstNameTest
    Insert last name            LastNameTest
    Insert password             PasswordTest
    Insert address              AddressTest
    Insert City                 Campinas
    Select State                Arizona
    Insert Zip Code             12345
    Select Country              United States
    Insert Mobile Phone         551999999999
    Click Register Button

    #Main screen
    Check logged user           FirstNameTest LastNameTest