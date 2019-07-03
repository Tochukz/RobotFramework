*** Settings ***
Documentation  Learning to use locator
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Using locator for actions
    [Documentation]  Locators lessons
    [Tags]  Smoke
    Open Browser  http://www.amazon.com  chrome
    Wait Until Page Contains  Your Amazon.com
    Input Text  id=twotabsearchtextbox  ferrari 458
    Clickk Button  css=#nav-search > form > div.nav-right > div > input

*** Keywords ***