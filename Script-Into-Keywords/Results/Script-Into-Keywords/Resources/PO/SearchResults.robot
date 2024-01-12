*** Settings ***
Library   SeleniumLibrary

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains                results for "Toys for babies 12-18 months"

Click Product Link
    [Documentation]                         Clicks on the first products in the search row
    Click Link                              css=#result_0 a.s-access-detail-page