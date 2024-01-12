*** Settings ***
Library          SeleniumLibrary

*** Keywords ***
Begin Web Testing
  Open Browser                             about:blank     chrome

End Web Testing
    Close Browser

Insert Testing Data
    Custom Keyword 1
    Custom Keyword 2
    Log  I am setting up the stest data...

Cleanup Testing Data
    Log  I am cleaning up the test data...

Custom Keyword 1
    Log  Doing keyword 1

Custom Keyword 2
    Log  Doing keyword 2...
