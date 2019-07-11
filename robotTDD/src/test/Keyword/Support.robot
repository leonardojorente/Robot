*** Settings ***
Documentation  Support library to basic commands
Library        Selenium2Library
Variables      ../Variables/Variables.py

*** Keywords ***

Open browser and maximize
    [Arguments]    ${URL}    ${browser}=chrome
    [Documentation]    This keyword takes 1-2 arguments, the second is default
  Open browser  ${URL}  ${browser}
  Maximize Browser Window
  Log to console  Browser is maximized
