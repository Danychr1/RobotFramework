*** Settings ***
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/SearchResults.robot
Resource  ../Resources/PO/Product.robot
Resource  ../Resources/PO/Cart.robot
Resource  ../Resources/PO/CheckOut.robot
Resource  ../Resources/PO/SignIn.robot

*** Keywords ***
Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded


    Input Text                              id=twotabsearchtextbox    Toys for babies 12-18 months
    Click Button                            xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains                results for "Toys for babies 12-18 months"

Select Product from Search Results
     Click Link                             css=#result_0 a.s-access-detail-page
     Wait Until Page Contains               Back to search results


Add Product to cart
     Click Button                            id=Add-to-cart-button
     Wait Until Page Contains                1 item added to cart

Begin Checkout
    Click Link                              Proceed to Checkout
    Page Should Contain Element             ap_signin1a_pagelet_title
    Element Text Should Be                  ap_signin1a_pagelet_title   Sign In
