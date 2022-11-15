*** Settings ***
Library           Selenium2Library
Resource          ../resources/keywords/keywords.robot
Variables         ../resources/variables/Menu.yaml
Variables         ../resources/variables/Login.yaml

*** Keywords ***
Go to remote selling
    Wait Until Element Is Visible   ${MENU.AZ_TITLE}
    Click Element   ${MENU.REMOTE_SELLING_BTN}
    ${handles}=  Get Window Handles
    Switch Window   ${handles}[1]
    Wait Until Element Is Visible   ${LOGIN.LOGIN_HEADER}
    Click Element   ${LOGIN.LOGIN_BTN}
*** Test Cases ***
Test Upload File
    Go to Browser
    Go to remote selling
    Close the Browser
