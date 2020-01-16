*** Settings ***
Library    Selenium2Library
Library    Script2.Script2    ${path}    ${device}    WITH NAME    obj
Resource    Rso.robot

*** Test Cases ***
Login erp
    Open erp by chrome

    ${status}=  Run Keyword and Return Status   Test
    Step    1   "This is a step in Jira"   ${status}

    ${status}=  Run Keyword and Return Status   Test2
    Step    2   "This is second step in Jira"   ${status}

*** Variables ***
${path}    c:
${device}    samsung
