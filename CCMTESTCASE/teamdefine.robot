*** Settings ***
Library     SeleniumLibrary
Resource        ../CCMRESOURSEFILES/teamDkeywords.robot
Resource        ../CCMRESOURSEFILES/1Dkeyword.robot
*** Variables ***
*** Test Cases ***
Team define by QPC
    [Documentation]    this test case used for the define the team
    [Tags]  teamdefine
    Open the rul and maximize   http://172.29.58.29:2023/auth/login
    Login the user id and password      qpc     12345678
    Click on the workbench  unitworkbench
    All catagory on
    select the concern number check box
    scroll to team define button
    click on the team define button
    click on the concern number check box
    click on the Admit/Reject   Admit
    2D screen team define
    3D screen team define
    4D counter measure
    5D standardization
    6D verification
    7D monitoring
    8d Clouser
    CMR process
    click on the save and save&lock
    #click on stage drop down    7
    #Click on the add button
Team define copy functionslity
    [Documentation]     this is used for the run the copy functionality
    [Tags]  copy
    Open the rul and maximize   http://172.29.58.29:2023/auth/login
    Login the user id and password      qpc     12345678
    Click on the workbench  unitworkbench
    All catagory on
    select the concern number check box
    select on the from concer number    20240502P31A147
    scroll to team define button
    click on the team define button
    click on the copy toggle button
    click on the from concern number
    click on the To concern number
    click on the Admit/Reject   Admit
    click on the copy button
    click on the save and save&lock








