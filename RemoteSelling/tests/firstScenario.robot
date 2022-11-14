*** Settings ***
Library           Selenium2Library
Resource          ../resources/keywords/keywords.robot
Variables         ../resources/variables/MenuPage.yaml

*** Keywords ***
Verify File Upload
    Click Element    ${MENU.REMOTE_SELLING_BTN}

*** Test Cases ***
Test Upload File
    Go to Browser
    Verify File Upload
    Close the Browser
