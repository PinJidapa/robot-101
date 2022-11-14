*** Settings ***
Library           Selenium2Library
Variables         ../variables/common.yaml
Variables         ../variables/upload.yaml

*** Keywords ***
Go to Browser
    Open Browser    ${BASE.BASE_URL}    ${BASE.BROWSER}

Close the Browser
    Close Browser
