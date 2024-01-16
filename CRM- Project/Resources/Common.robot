*** Settings ***
Library  SeleniumLibrary


*** Variables ***


*** Keywords ***
Begin Web Test
    #Initialize Selenium
    #Set selenium speed              .2s
    Set selenium timeout            10s
    open browser                    about:blank          ${BROWSER}

    # Resize the browser window for recording
    Set window position              x=341   y=169
    Set window size                  width=1935   height=1090


End Wed Test
     close all browsers