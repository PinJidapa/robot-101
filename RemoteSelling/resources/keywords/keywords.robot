*** Settings ***
Library           Selenium2Library
Variables         ../variables/Common.yaml

*** Keywords ***
Go to Browser
    Open Browser    ${BASE.BASE_URL}    ${BASE.BROWSER}

Close the Browser
    Close Browser
