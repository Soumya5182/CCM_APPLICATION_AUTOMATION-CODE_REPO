*** Settings ***
Library     SeleniumLibrary
Resource    ../CCMRESOURSEFILES/2Dkeyword.robot
Resource    ../CCMRESOURSEFILES/1Dkeyword.robot
*** Variables ***

*** Test Cases ***
2D screen unit test case
    [Tags]  twod
    Open the rul and maximize   http://172.29.58.29:2023/auth/login
    Login the user id and password      qpc     12345678
    Click on the workbench  unitworkbench
    ${datetime}=   date and time of the list
    Log    ${datetime}
    All catagory on
    click on the concern number
    click on the 2D stepper
    ##customer end quantity
    input the customer end quantity
    Enter the total number of Ok    45  45
    Click Element    //span[contains(text(),"Customer End Quantity")]/parent::div/following-sibling::div[8]/span/mat-datepicker-toggle
    Click Element    //div[text()=' ${datetime} ']
    input the customer end quantity other column data
    #save the save and lock the customer end quantity data
    ##Customer's Other Locations
    input the Customer's Other Locations
    Enter the total number of Ok    45  11
    Click Element    //span[contains(text(),"Customer's Other Locations")]/parent::div/following-sibling::div[8]/span/mat-datepicker-toggle
    Click Element    //div[text()=' ${datetime} ']
    input in Customer's Other Locations data
    ##material in transist
    Input the material in transist
    Enter the total number of Ok    21  11
    Click Element    //span[contains(text(),"Customer's Other Locations")]/parent::div/following-sibling::div[8]/span/mat-datepicker-toggle
    Click Element    //div[text()=' ${datetime} ']
    input in the the material in transist


