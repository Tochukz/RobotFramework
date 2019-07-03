*** Settings ***
Library  SeleniumLibrary

Resource  PageObjects/LandingPage.robot

*** Keywords ***
Search for products
    LandingPage.Verify Page Loaded
    Input Text  id=twotabsearchtextbox  ${SEARCH_TERM}
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  results for "Ferrari 458"

Select Product from Search Results
    Click Element  xpath=//*[@id="search"]/div[1]/div[2]/div/span[3]/div[1]/div[1]/div/div/div/div/div/div[2]/div[2]/div/div[1]/h2/a/span
    Wait Until Page Contains  Back to results

Add Product to Cart
    Click Button  id=add-to-cart-button
    Wait until Page Contains  Added to Cart

Begin Checkout
    Click Link  id=hlb-ptc-btn-native
    Wait Until Page Contains  Add to your order
    Click Button  id=siNoCoverage-announce
    Page Should Contain Textfield  id=ap_email