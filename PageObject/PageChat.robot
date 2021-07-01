*** Settings ***
Library         SeleniumLibrary
Resource        ../Var/var.robot

*** Variables ***
${menuBar}                class:vc-app-bar
${chatTitle}              xpath://div[@class="vc-app-bar"]//*[@class="vc-app-bar-title-center vc-app-bar-item-grow"]
${minimizeBtn}            xpath://div[@class="vc-app-bar"]//*[@class="vc-app-bar-item"]//*[@class="pointer"]
${robotChatBox}           xpath:(//div[@class="vc-message-text-bubble"])[1]
${getStartBtn}            xpath://div[@class="vc-widget-input-container vc-widget-get-started-button"]
${messageDate}            class:vc-message-date
${inputQuestion}          class:vc-widget-input-text
${myChatBox}              xpath://div[@class="vc-message-text me"]
${helloBtn}               class:vc-menu-bar-item-title
${whatButton}             class:message-button
${helloAnswerBox}         xpath:(//div[@class="vc-message-text-bubble"])[2]
${helloBtnAnswerBox}      xpath:(//div[@class="vc-message-text-bubble"])[3]
${whatAnswerBox}          xpath:(//div[@class="vc-message-text-bubble"])[4]

*** Keywords ***
Verify Title Bar
    wait until element is visible           ${menuBar}            timeout=10s
    wait until element is visible           ${chatTitle}          timeout=10s
    wait until element is visible           ${minimizeBtn}        timeout=10s
    wait until element is visible           ${robotChatBox}       timeout=10S

Verify Chat Title            
    element text should be                  ${chatTitle}          Vouch Widget

Close Chat Box
    click element                           ${minimizeBtn}

Click Get Started Button
    click element                           ${getStartBtn}
    wait until element is visible           ${inputQuestion}    timeout=10s

Verify Instruction
    [Arguments]                             ${instruction}
    wait until element is visible           ${messageDate}       timeout=10s
    element text should be                  ${robotChatBox}      ${instruction}


Input First Questions
    [Arguments]                             ${question}
    input text                              ${inputQuestion}    ${question}
    Press Keys                              ${inputQuestion}    ENTER

Verify My Question
    wait until element is visible           ${myChatBox}        timeout=10s

Verify Auto Answer Hello
    [Arguments]                             ${autoAnswer}
    wait until element is visible           ${helloAnswerBox}       timeout=10s    
    element text should be                  ${helloAnswerBox}       ${autoAnswer}

Verify Hello Button
    wait until element is visible           ${helloBtn}        timeout=10s
    click element                           ${helloBtn}
    Sleep       3s

Verify Auto Answer Hello Button
    [Arguments]                             ${autoAnswer}
    wait until element is visible           ${helloBtnAnswerBox}       timeout=10s    
    element text should be                  ${helloBtnAnswerBox}       ${autoAnswer}

Verify What Button
    wait until element is visible           ${whatButton}        timeout=10s
    click element                           ${whatButton}

Verify Auto Answer What
    [Arguments]                             ${autoAnswer}
    wait until element is visible           ${whatAnswerBox}       timeout=10s    
    element text should be                  ${whatAnswerBox}       ${autoAnswer}
