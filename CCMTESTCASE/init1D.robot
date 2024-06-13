*** Settings ***
Library     SeleniumLibrary
Resource    ../CCMRESOURSEFILES/1Dkeyword.robot
*** Variables ***
${index}    20
*** Test Cases ***
1D concern geneartion
    [Tags]  oned
    [Documentation]     this test case used for the creating the concern geneartion
    Run Test Case Iteration
More details one d
    [Tags]  moredetails
    [Documentation]     this test case used for the add the more details data by qpc cell owner In 1D
    1D concern geneartion more details by qpc
#---------------------------test case run mutiple time--------------------------------------------#

#    FOR     ${index}    IN RANGE    2    # Run the test case 4 times
#       Run Test Case Iteration
#    END
#-------------------------------------------------------------------------------------------------#
*** Keywords ***
Run Test Case Iteration
    [Tags]  oned
    Open the rul and maximize   http://172.29.58.29:2023/auth/login
    Login the user id and password      mkt     12345678
    Click on the workbench  initiatorworkbench
    create a new concern number
    select the unit
    select on the concern reported on
    select on the concern register in protal
    select on the concern category
    Enter Window person at customer End     soumyaranjan
    customer end window person deptt    CQA
    select the customer code    1199
    select the customer group
    customer product code & name    36715M81R00 - BKT-36715-81R00
    select the motherson product code   19005733 - WP2367826-4-84F
    Add the Quantity
    Enter Stock Qty Available at Customer's End     45  45
    Enter Stock at Customer's other Locations       45  11
    Enter Stock Qty in Transit      21  `11
    Enter the defect quantity   42
    Enter the lot of details of defextive parts     soumya
    Enter the other part details    working fine
    Model Project /vehicle name only    1   car
    Input the concern description
    scroll the page
    Select type of concern  ex
    Select the nature of concern    Other
    Customer Visit required     No
    Select CMR require To customer  Yes
    Select Priliminary report required to customer  Yes
    Select W/H type     Pig Tail
    Input the problem description in details
    Scroll to button
    cmr required to customer check
    Prilim required to customer check
    cmr submited check
    cmr submiited by check
    scroll to more details
    upload the mutiple file
    click on the save button
    click on the save and lock
1D concern geneartion more details by qpc
    [Tags]  moredetails
    Open the rul and maximize   http://172.29.58.29:2023/auth/login
    Login the user id and password      qpc     12345678
    Click on the workbench  unitworkbench
    All catagory on
    click on the concern number
    click on the more details tab
    select is concern related to part
    Select the motherson part code and name
    click on the Supplier code/Name
    process code and description
    Concern generated from Area and process     Assy
    select on the defect code   ASS1020
    Enter w/h since     1999
    Enter dispach qty   123
    Enter defective w/h dispatch    21
    connector no/CKt no     23
    Other area and process
    Repeated Concern    Yes
    click on the more details save button









    





