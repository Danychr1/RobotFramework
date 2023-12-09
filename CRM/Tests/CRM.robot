*** Settings ***
Documentation      This is smoe basic info about the whole suite.
Library            SeleniumLibrary
#Run the script:
#robot -d results tests/CRM.robot

*** Variables ***


*** Test Cases ***
Should be able to add new customer
   [Documentation]      This is some basic info about the test
                       #ID       #Type of test      #Feature
   [Tags]               1006       Smoke            Contacts
#Initialize Selenium
   log                  Starting the test case!
#open the browser
                              #Web                                  #Browser
   open browser           https://automationplayground.com/crm/       Firefox
   page should contain    Customers Are Priority One

   click link             id=SignIn
   page should contain    Login

   input text             id=email-id    kalyah012345@framework.com
   input text             id=password     dany
   click button           id= submit-id
   page should contain    Our Happy Customers

   click link           id=new-customer
   page should contain    Add Customer

   input text            id=EmailAddress   jeanedoe@gmail.com
   input text            id=FirstName      jeane
   input text             id=LastName      doe
   input text             id=City          San Francisco
   select from list by value                   id=StateOrRegion     CA
   SeleniumLibrary.Select Radio Button         gender      female
   select checkbox                             name=promos-name
   click button                                Submit
   wait until page contains                    Success! New customer added


   sleep                  5s
   close browser



*** Keywords ***
