*** Settings ***
Library         SeleniumLibrary
Resource        ../TestStep/TestHome.robot
Resource        ../Var/var.robot
Resource        ../Config/config.robot
Resource        ../TestStep/TestChat.robot

Suite Setup     Launch Browser and Open Home
Suite Teardown  Close All Browsers

*** Keywords ***
Launch Browser and Open Home
    Open Local Browser      ${globalURL}      chrome

*** Test Cases ***
User Open Vouch Chat Panel with Widget Button
    [Tags]      chat bot
    Verify Chat Box is Visible

User Could see Chat Panel Title
    Verify Chat Frame Content

User Could Minimize Chat Panel
    Verify Close Chat Box
