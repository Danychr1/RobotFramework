*** Settings ***
Library   SeleniumLibrary

*** Keywords ***
Load
    Go to                                   https://www.amazon.com

Verify Page Loaded
    Wait Until Page Contains                 Your Amazon.com
