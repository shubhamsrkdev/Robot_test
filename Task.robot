*** Settings ***
Library    Selenium2Library
Library    Script2.Script2    ${path}    ${device}    WITH NAME    obj

*** Test Cases ***
Login erp
    Open erp by chrome
    Input Text    id:userid    ENTER_USER_ID_HERE
    Input Password    id:pwd    ENTER_PASSWORD_HERE
    Click Button    class:psloginbutton
    Set Selenium Implicit Wait  3
    ${status}=    Run keyword and return status
    ...    Page Should Contain Element  class:PSgsgssgdfgdfPAGE
    Run keyword And Continue On Failure  Should Be True      ${status}
    ${result}=    obj.getting_path       ${status}
    Log To Console      ${result}

*** Keywords ***
Open erp by Chrome
    Open Browser    https://erp.bits-pilani.ac.in:4431/psp/hcsprod/?&cmd=login&errorCode=105&languageCd=ENG    chrome


*** Variables ***
${path}    c:
${device}    samsung
