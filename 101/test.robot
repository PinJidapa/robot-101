*** Settings ***
Library           Selenium2Library
Variables         ./variables/common.yaml
Variables         ./variables/upload.yaml

*** Keywords ***
Go to github on chrome
    Open Browser    ${BASE.BASE_URL}    ${BASE.CHROME_BROWSER}

Go to github on safari
    Open Browser    ${BASE.BASE_URL}    ${BASE.SAFARI_BROWSER}

Capture and close
    Maximize Browser Window
    Capture Page Screenshot
    Close Browser

Verify File Upload
    [Tags]    Regression
    Open Browser    ${UPLOAD.UPLOAD_URL}${UPLOAD.UPLOAD_PATH}    ${BASE.CHROME_BROWSER}
    Wait Until Element Is Visible    id:file-submit
    Choose File    ${UPLOAD.CHOOSE_FILE_ID}    ${UPLOAD.CHOOSE_FILE_URL}
    Click Element    id:file-submit
    Element Text Should Be    tag:h3    File Uploaded!
    Element Text Should Be    id:uploaded-files    temp.jpg
    Close Browser

*** Test Cases ***
Test Open Browser
    Verify File Upload
