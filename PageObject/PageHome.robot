*** Settings ***
Library         SeleniumLibrary
Resource        ../Var/var.robot

*** Variables ***
${widgetButton}         class:vc-widget-activator-content
${chatFrame}            id:vc-chat-iframe

*** Keywords ***
Verify Widget is Clicked
    Wait until element is visible           ${widgetButton}     timeout=30s
    click element                           ${widgetButton}

Verify Chat Page is Opened
    wait until element is visible           ${chatFrame}    timeout=30s
    Select Frame                            ${chatFrame}    

Verify Main Page
    Unselect Frame