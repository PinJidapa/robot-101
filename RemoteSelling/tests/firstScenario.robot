*** Settings ***
Library           Selenium2Library
Resource          ../resources/keywords/keywords.robot
Variables         ../resources/variables/upload.yaml

*** Keywords ***
Verify File Upload
    Wait Until Element Is Visible    id:file-submit
    Choose File    ${UPLOAD.CHOOSE_FILE_ID}    ${UPLOAD.CHOOSE_FILE_URL}
    Click Element    id:file-submit
    Element Text Should Be    tag:h3    File Uploaded!

*** Test Cases ***
Test Upload File
    Go to Browser
    Verify File Upload
    Close the Browser
