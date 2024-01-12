*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Click Button
     Go to         id=Add-to-cart-button

Add Product to cart
    Wait Until Page Contain       1 item added to cart





