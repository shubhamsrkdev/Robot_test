*** Settings ***
Library    Selenium2Library
Library    DebugLibrary
Library    Script2.Script2    ${path}    ${device}    WITH NAME    obj

*** Test Cases ***
Login erp
    Open erp by chrome
    ${status}=    Run keyword and return status     Run Keywords        Test testing_suite
    ...     AND     Click Button    class:psloginbutton
    ...     AND     Set Selenium Implicit Wait  3
    ...     AND     Page Should Contain Element  class:PSPAGE
    ...     AND     Page Should Contain Element  class:hasoidhais
    ${status2}=    Run keyword and return status
    ...    Page Should Contain Element  class:PSgsgssgdfgdfPAGE
    Run keyword And Continue On Failure  Should Be True      ${status}
    Run keyword And Continue On Failure  Should Be True      ${status2}
    ${result}=    obj.getting_path       ${status}
    Log To Console      ${result}
    Log To Console      ${status2}

*** Keywords ***
Open erp by Chrome
    Open Browser    https://erp.bits-pilani.ac.in:4431/psp/hcsprod/?&cmd=login&errorCode=105&languageCd=ENG    chrome

Test testing_suite
    Run Keywords        Input Text      id:userid    41120160184
    ...     AND     Input Text      id:pwd    S0IJ*3lU



*** Variables ***
${path}    c:
${device}    samsung
