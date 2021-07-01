*** Settings ***
Library         SeleniumLibrary
Resource        ../PageObject/PageChat.robot
Resource        ../PageObject/PageHome.robot

*** Keywords ***
Verify Chat Frame Content
    Verify Title Bar
    Verify Chat Title
    Sleep       3s
    
Verify Close Chat Box
    Close Chat Box
    Verify Main Page

Verify Start to Chat    
    Click Get Started Button

Verify Instruction Content
    [Arguments]                             ${instructionGreeting}
    Verify Instruction                      ${instructionGreeting}
    
Verify Input Question
    [Arguments]                 ${question}
    Input First Questions       ${question}
    Verify My Question

Verify Answer the Question
    [Arguments]                 ${answer}
    Verify Auto Answer Hello    ${answer}

Verify Response from Hello Button
    [Arguments]                 ${answer}
    Verify Auto Answer Hello Button     ${answer}

Auto What Response
    [Arguments]                 ${answer}
    Verify Auto Answer What     ${answer}

Hello Button is Clickable
    Verify Hello Button

What Button is Clickable
    Verify What Button
