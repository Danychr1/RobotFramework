*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${ADDCUSTOMERS_HEADER_LABEL} =           Add Customer
${ADDCUSTOMERS_EMAIL_TEXTBOX} =          id=EmailAddress
${ADDCUSTOMERS_FIRST_NAME_TEXTBOX} =     id=FirstName
${ADDCUSTOMERS_LAST_NAME_TEXTBOX} =      id=LastName
${ADDCUSTOMERS_CITY_TEXTBOX} =           id=City
${ADDCUSTOMERS_STATE_DROPDOWN} =         id=StateOrRegion
${ADDCUSTOMERS_GENDER_RADIO} =           gender
${ADDCUSTOMERS_PROMO_CHECBOX} =          name=promos-name
${ADDCUSTOMERS_SUBMIT_BUTTON} =          Submit

*** Keywords ***
Verify Page Loaded
    wait until page contains          ${ADDCUSTOMERS_HEADER_LABEL}

Add New Customer
    Fill Customer Fields
    Click Submit Button

Fill Customer Fields
    input text                       ${ADDCUSTOMERS_EMAIL_TEXTBOX}             danyjoe@hotmail.com
    input text                       ${ADDCUSTOMERS_FIRST_NAME_TEXTBOX}         Dany
    input text                       ${ADDCUSTOMERS_LAST_NAME_TEXTBOX}         Joe
    input text                       ${ADDCUSTOMERS_CITY_TEXTBOX}              Berkeley
    select from list by value        ${ADDCUSTOMERS_STATE_DROPDOWN}            CA
    select radio button              ${ADDCUSTOMERS_GENDER_RADIO}              male
    select checkbox                  ${ADDCUSTOMERS_PROMO_CHECBOX}

Click Submit Button
    click button                     ${ADDCUSTOMERS_SUBMIT_BUTTON}



