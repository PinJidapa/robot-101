*** Settings ***
Library           Selenium2Library
Variables         ../variables/common.yaml
Variables         ../variables/upload.yaml

*** Keywords ***
Go to Browser
    Open Browser    ${UPLOAD.UPLOAD_URL}${UPLOAD.UPLOAD_PATH}    ${BASE.BROWSER}

Close the Browser
    Close Browser
