*** Settings ***
Library    SeleniumLibrary
#Resource
#-d results  Tests/Google/FunctionalTestSuite/Search.robotde

*** Variables ***


*** Test Cases ***
This is basic test case
     [Documentation]   Google test
     [Tags]      regression


     Open Browser    https://www.google.com     firefox
     Close Browser

*** Keywords ***