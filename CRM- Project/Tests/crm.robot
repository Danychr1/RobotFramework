*** Settings ***
Documentation       This is some information about the whole suite
Resource            ../Resources/Common.robot
Resource            ../Resources/CrmApp.robot
Test Setup          Begin Web Test
Test Teardown       End Web Test
# Run the  script:
# robot -d results tests/crm.robot

*** Variables ***
${BROWSER} =                edge
${URL} =                    https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL} =      kalyah@robotframework.com
${VALID_LOGIN_PASSWORD} =   Carlson12345!

*** Test Cases ***
Home page should load
    [Documentation]                 Test the home page
    [Tags]                          1001    Smoke    Login
    CrmApp.Go to "Home" Page

Should be able to Login With Valid Credentials
    [Documentation]                 Test the login
    [Tags]                          1002    Smoke    Login
    CrmApp.Go to "Home" Page
    CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}

Should be able to log Out
    [Documentation]                 Test the log out
    [Tags]                          1004    Smoke    Login
    CrmApp.Go to "Home" Page
    CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    CrmApp.Sign Out

Should be able to add new customer
    [Documentation]                 Test adding new customer!
    [Tags]                          1006    Smoke    Contacts
    CrmApp.Go to "Home" Page
    CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    CrmApp.Add New Customer
    CrmApp.Sign Out


    #Initiales Selenium
        # Set selenium speed              .2s
        # Set selenium timeout            10s

    # Open the browser
       # log                              Starting the test case!
       # open browser                     ${URL}          ${BROWSER}

    # Resize the browser window for recording
    # Set window position              x=341   y=169
    # Set window size                  width=1935   height=1090

    #Wait Until Page Contains         Customers Are Priority One

    #LogIn
   # CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}

    # Click link                       id=SignIn
    # Wait Until Page Contains         Login

    #  input text                       id=email-id          ${VALID_LOGIN_EMAIL}
   #  input text                       id=password          ${VALID_LOGIN_PASSWORD}
   #  click button                     id=submit-id
   #  Wait Until Page Contains         Our Happy Customers

    #ADD Customers
   # CrmApp.Add New Customer
   #  click link                       id=new-customer
   #  Wait Until Page Contains         Add Customer

   # input text                       id=EmailAddress      danyjoe@hotmail.com
   # input text                       id=FirstName         Dany
   # input text                       id=LastName          Joe
   # input text                       id=City              Berkeley
   # select from list by value        id=StateOrRegion     CA
   # select radio button              gender               male
   # select checkbox                  name=promos-name
   # click button                     Submit
   # Wait Until Page Contains         Success! New customer added.

      #Log Out
    # CrmApp.Sign Out
    # click link                       Sign Out
    # wait until page contains         Signed Out

   #  close browser

*** Keywords ***

