*** Settings ***
Library         SeleniumLibrary
Resource        ../PageObject/PageHome.robot

*** Keywords ***
Verify Chat Box is Visible
    Verify Widget is Clicked
    Verify Chat Page is Opened
