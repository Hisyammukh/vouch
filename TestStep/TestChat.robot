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
