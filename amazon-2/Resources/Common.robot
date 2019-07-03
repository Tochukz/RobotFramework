*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser  ${START_URL}  ${BROWSER}

End Web Test
    Close Browser
Insert Testing Data
    Log  Insert testing data for suite setup
Cleanup Testing Data
    Log  Cleanup testing data for suite teardown