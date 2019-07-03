*** Settings ***
Library  SeleniumLibrary

*** Keyword ***
Verify Page Loaded
    Maximize Browser Window
    Wait Until Page Contains  Your Amazon.com
