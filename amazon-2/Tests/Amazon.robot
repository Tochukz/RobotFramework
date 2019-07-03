*** Settings ***
Documentation  This is an add to cart test
Resource  ../Resources/AmazonApp.robot
Resource  ../Resources/Common.robot
Suite Setup  Insert Testing Data
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test
Suite Teardown  Cleanup Testing Data

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  http://www.amazon.com
${SEARCH_TERM} =  Ferrari 458

*** Test Cases ***
User must be able to search for product
    [Documentation]  Add to cart test
    [Tags]  Smoke
    AmazonApp.Search for products

User must be able to add to cart and checkout
    [Documentation]  Add to cart test
    [Tags]  Smoke
    AmazonApp.Search for products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout

# Test Setup and Test Teardown will run before and after every test case in the suite respectively.
# Suite Setup and Suite Teardown will run before and after the first test case and the last test case in the test suite rrespectively.

# Running the script to override variables at run time
# $ robot -d Results/ -v BROWSER:firefox -v SEARCH_TERM:"Lamborghini Gallardo" Tests/Amazon.robot