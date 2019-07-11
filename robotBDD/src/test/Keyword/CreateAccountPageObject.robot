*** Settings ***
Documentation  This keywords are related to the create account screen
Library        Selenium2Library

*** Keywords ***

Click title check button
    wait until element is visible  xpath://*[@name='id_gender']
    Click Element                  xpath://*[@name='id_gender' and @value='1']

Insert first name
   [Arguments]  ${firstname}
   wait until element is visible  xpath://*[@id='customer_firstname']
   input text                     xpath://*[@id='customer_firstname']  ${firstname}

Insert last name
   [Arguments]  ${lastname}
   wait until element is visible  id:customer_lastname
   input text                     xpath://*[@id='customer_lastname']  ${lastname}

Insert password
   [Arguments]  ${password}
   wait until element is visible  name:passwd
   input text                     xpath://*[@name='passwd']  ${password}

Insert address
   [Arguments]  ${adrress}
   wait until element is visible  xpath://*[@id='address1']
   input text                     xpath://*[@id='address1']  ${adrress}

Insert City
   [Arguments]  ${city}
   wait until element is visible  xpath://*[@id='city']
   input text                     xpath://*[@id='city']  ${city}

Select State
   [Arguments]  ${state}
   wait until element is visible  xpath://*[@id='uniform-id_state']
   Click Element                  xpath://*[@id='uniform-id_state']
   Select from List By Label      xpath://*[@id='id_state']  ${state}

Insert Zip Code
   [Arguments]  ${postcode}
   wait until element is visible  xpath://*[@id='postcode']
   input text                     xpath://*[@id='postcode']  ${postcode}

Select Country
   [Arguments]  ${country}
   wait until element is visible  xpath://*[@id='uniform-id_country']
   Click Element                  xpath://*[@id='uniform-id_country']
   Select from List By Label      xpath://*[@id='id_country']  ${country}

Insert Mobile Phone
   [Arguments]  ${phone}
   wait until element is visible  xpath://*[@id='phone_mobile']
   Input Text                     xpath://*[@id='phone_mobile']  ${phone}

Click Register Button
    wait until element is visible  xpath://*[@id='submitAccount']
    Click Element                  xpath://*[@id='submitAccount']
