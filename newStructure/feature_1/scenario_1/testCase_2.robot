*** Settings ***
Library           Selenium2Library
Variables         ../../variables/common.yaml
Variables         ../../variables/upload.yaml

*** Keywords ***
Verify File Upload
    [Tags]    Regression
    Open Browser    ${UPLOAD.UPLOAD_URL}${UPLOAD.UPLOAD_PATH}    ${BASE.BROWSER}
    Wait Until Element Is Visible    id:file-submit
    Choose File    ${UPLOAD.CHOOSE_FILE_ID}    ${UPLOAD.CHOOSE_FILE_URL}
    Click Element    id:file-submit
    Element Text Should Be    tag:h3    File Uploaded!
    Element Text Should Be    id:uploaded-files    temp.jpg
    Close Browser

*** Test Cases ***
Test Upload File 2
    Verify File Upload
