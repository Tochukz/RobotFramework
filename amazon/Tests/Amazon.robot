*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary
#Suite Teardown  Close Browser

*** Variables ***
#${BROWSER}    chrome

*** Test Cases ***
User must sign-in to checkout
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  http://www.amazon.com  chrome
    Maximize Browser Window
    #BuiltIn.Sleep 3s
    Close Browser

*** Keywords ***
