*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary
#Suite Teardown  Close Browser

*** Variables ***
#${BROWSER}    chromium

*** Test Cases ***
User must be able to visite home page
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  http://www.amazon.com  firefox
    Maximize Browser Window
    #BuiltIn.Sleep 3s
    Close Browser

*** Keywords ***
