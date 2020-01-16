*** Keywords ***

Test
    Run Keywords    Input Text    id:userid    4566514654
    ...     AND     Input Text    id:pwd    sadssd
    ...     AND     Click Button    class:psloginbutton
    ...     AND     Set Selenium Implicit Wait  3
    ...     AND     Page Should Contain Element     class:PSPAGE
Step
    [Arguments]  ${StepNo}  ${StepDes}  ${status}
    Log To Console      ${StepNo}
    Log To Console      ${StepDes}
    Log To Console      ${status}
    Should Be True      ${status}

Open erp by Chrome
    Open Browser    https://erp.bits-pilani.ac.in:4431/psp/hcsprod/?&cmd=login&errorCode=105&languageCd=ENG    chrome
Test2
    Page Should Contain Element  class:PSgsgssgdfgdfPAGE
