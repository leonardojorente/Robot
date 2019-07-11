*** Settings ***
Documentation  This keywords are related to Basic elements of the screen
Library        Selenium2Library
Library        BuiltIn
Variables      ../Variables/Variables.py

*** Keywords ***
Verify the homepage title
   # ${title} is defined on variables.py file, is similar to final value
   Wait until element is visible  xpath://a[text()="${title}"]
   Log to console  Home page title verified

Check logged user
  [Arguments]  ${username}
   Wait until element is visible  xpath://Span[text()="${username}"]
   ${usermane2}  Get Text  xpath://*[@title="View my customer account"]
   should be equal as strings  ${username}  ${usermane2}