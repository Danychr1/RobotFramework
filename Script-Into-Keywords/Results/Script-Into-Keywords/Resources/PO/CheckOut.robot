*** Settings ***
Library   SeleniumLibrary

*** Keywords ***
Begin Checkout
    Click Link                              Proceed to Checkout
    Page Should Contain Element             ap_signin1a_pagelet_title
    Element Text Should Be                  ap_signin1a_pagelet_title   Sign In


