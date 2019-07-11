*** Settings ***
Documentation  This is a basic test
Library        Selenium2Library
Library        String

*** Variables ***

*** Test Cases ***
TestCase01: Create new account
    [Documentation]                As a user I can create a new account
    #to inspect elements, use f12 + ctrl+F
    ${emailId}     Generate Random String    3
    ${email}       Set Variable    test${emailId}@gmail.com
    #${first_name}  Set Variable    first${emailId}
    #${last_name}   Set Variable    last${emailId}

    #Main Screen
    open browser                   http://automationpractice.com/index.php   chrome

    #Click sign in button
    wait until element is visible  xpath://*[@title='Log in to your customer account']
    click element                  xpath://*[@title='Log in to your customer account']

    #Loggin Screen

    #Insert email
    wait until element is visible  xpath://*[@id='email_create']
    input text                     xpath://*[@id='email_create']  ${email}

    #Click Create account button
    wait until element is visible  xpath://*[@id='SubmitCreate']
    click element                  xpath://*[@id='SubmitCreate']

    #Create account screen

    #Click title check button
    wait until element is visible  xpath://*[@name='id_gender']
    Click Element                  xpath://*[@name='id_gender' and @value='1']

    #Insert first name
    wait until element is visible  xpath://*[@id='customer_firstname']
    input text                     xpath://*[@id='customer_firstname']  firstname

    #Insert last name
    wait until element is visible  id:customer_lastname
    input text                     xpath://*[@id='customer_lastname']  lastname

    #Insert password
    wait until element is visible  name:passwd
    input text                     xpath://*[@name='passwd']  testpassword

    #Insert address
    wait until element is visible  xpath://*[@id='address1']
    input text                     xpath://*[@id='address1']  campinas sao paulo

    #Insert City
    wait until element is visible  xpath://*[@id='city']
    input text                     xpath://*[@id='city']  campinas sao paulo

    #Select State
    wait until element is visible  xpath://*[@id='uniform-id_state']
    Click Element                  xpath://*[@id='uniform-id_state']
    Select from List By Label      xpath://*[@id='id_state']  Arizona

    #Insert Zip Code
    wait until element is visible  xpath://*[@id='postcode']
    input text                     xpath://*[@id='postcode']  13016

    #Select Country
    wait until element is visible  xpath://*[@id='uniform-id_country']
    Click Element                  xpath://*[@id='uniform-id_country']
    Select from List By Label      xpath://*[@id='id_country']  United States

    #Insert Mobile Phone
    wait until element is visible  xpath://*[@id='phone_mobile']
    Input Text                     xpath://*[@id='phone_mobile']  +5519999999999

    #Click Register Button
    wait until element is visible  xpath://*[@id='submitAccount']
    Click Element                  xpath://*[@id='submitAccount']

    #Main screen

    #Check logged user
    wait until element is visible  xpath://Span[text()="firstname lastname"]

*** Keywords ***
