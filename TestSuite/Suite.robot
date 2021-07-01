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

User Could Start to Initiate Conversation
    Verify Chat Box is Visible
    Verify Chat Frame Content
    Verify Start to Chat                    
    Verify Instruction Content              ${firstChatBot}

User Could Send Hello Message
    Verify Input Question                   hello
    Verify Answer the Question              hello!

User Could Click Hello Button
    Hello Button is Clickable
    Verify Response from Hello Button       hello!

User Could Click What Button
    What Button is Clickable
    Auto What Response                      what ?

Refresh the Chat Panel
    Reload Page
    Verify Chat Box is Visible
    Verify Chat Frame Content
    Auto What Response                      what ?
    Verify Response from Hello Button       hello!
    Verify Answer the Question              hello!
    Verify Instruction Content              ${firstChatBot}
    Auto What Response                      what ?
    