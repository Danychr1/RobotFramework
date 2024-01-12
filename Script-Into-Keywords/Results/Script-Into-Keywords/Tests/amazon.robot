*** Settings ***
Documentation    This is some information about the whole suite
Resource  ../Resources/amazon.robot
Resource  ../Resources/Common.robot
Suite Setup  Insert Testing Data
Test Setup  Begin Web Testing
Test Teardown  End Web Testing
Suite Teardown  Cleanup Testing Data


#  robot -d results tests/amazon.robot
*** Variables ***


*** Test Cases ***
User can search for products
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
   amazon.Search for Products

User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
   amazon.Search for Products
   amazon.Select Product from Search Results
   amazon.Add Product to Cart
   amazon.Begin Checkout
   amazon.SignIn






