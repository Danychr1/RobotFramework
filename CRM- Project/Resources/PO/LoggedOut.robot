*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LOUGGEDOUT_HEADER_LABEL} =            Signed Out

*** Keywords ***
Verify Page Loaded
      wait until page contains          ${LOUGGEDOUT_HEADER_LABEL}

