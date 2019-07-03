*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***

User can search for productss
    # Here we pass variable input data to a user-defiind vrariable
    Begin Web Test  http://www.amazon.com  chrome

*** Keywords ***
Begin Web Test
    [Arguments]  ${url}  ${browser}
    Open Browser  ${url}  ${browser}
    Close Browser
