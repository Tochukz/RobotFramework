*** Settings ***
Documentation  This is an add to cart test
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
User must be able to add to cart and checkout
    [Documentation]  Add to cart test
    [Tags]  Smoke

    #Pre-conditions
    Open Browser  http://www.amazon.com  chrome
    Maximize Browser Window
    Wait Until Page Contains  Your Amazon.com
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  results for "Ferrari 458"
    Click Link  xpath=//*[@id="search"]/div[1]/div[2]/div/span[3]/div[1]/div[1]/div/div/div/div[2]/div[2]/div/div[1]/h2/a
    Wait Until Page Contains  Back to results
    Click Button  id=add-to-cart-button
    Wait until Page Contains  Added to Cart

    #Steps
    Click Link  id=hlb-ptc-btn-native
    Wait Until Page Contains  Add to your order
    Click Button  id=siNoCoverage-announce
    Page Should Contain Textfield  id=ap_email

    #Post-conditions
    Close Browser

*** Keywords ***
