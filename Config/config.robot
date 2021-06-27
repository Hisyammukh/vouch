*** Keywords ***
Open Local Browser
    [Arguments]         ${url}      ${browser}
    open browser        ${url}      ${browser}
    maximize browser window
