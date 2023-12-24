*** Settings ***
Documentation    This is some information about the whole suite
Library          SeleniumLibrary


#  robot -d results tests/amazon.robot
*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke

    Begin Web Testing
    Search for Products
    Select Product from Search Results
    Add Product to Cart
    Begin Checkout
    End Web Testing


*** Keywords ***
Begin Web Testing
  Open Browser                             about:blank     chrome

Search for Products
    Go to                                   https://www.amazon.com
   # Wait Until Page Contains               Your Amazon.com
    Input Text                              id=twotabsearchtextbox    Toys for babies 12-18 months
    Click Button                            xpath=//*[@id="nav-search"]/form/div[2]/div/input
   # Wait Until Page Contains                results for "Toys for babies 12-18 months"

Select Product from Search Results
    Click Link                              css=#result_0 a.s-access-detail-page
   # Wait Until Page Contains               Back to search results


Add Product to cart
    Click Button                            id=Add-to-cart-button
   # Wait Until Page Contains               1 item added to cart



Begin Checkout
    Click Link                              Proceed to Checkout
    Page Should Contain Element             ap_signin1a_pagelet_title
    Element Text Should Be                  ap_signin1a_pagelet_title   Sign In

End Web Testing
     Close Browser