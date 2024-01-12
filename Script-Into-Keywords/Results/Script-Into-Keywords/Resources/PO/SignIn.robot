*** Settings ***
Library   SeleniumLibrary

*** Keywords ***
Begin SigIn
   Click Link                    ap_signin1a_pagelet_title   Sign In

    Wait Until Page Contain      Sign In page
