*** Settings ***
Library           Selenium2Library

*** Variables ***
${BASE_LINK}      https://facebook.com

*** Keywords ***
Go to Facebook
    Open Browser    ${BASE_LINK}    chrome

*** Test Cases ***
Test Go to Facebook
    Go to Facebook
