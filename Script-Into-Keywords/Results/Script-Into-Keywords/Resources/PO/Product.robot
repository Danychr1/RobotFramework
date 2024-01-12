*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Click Link
     Go to         css=#result_0 a.s-access-detail-page

Verify Page Loaded
     Wait Until Page Contains               Back to search results
