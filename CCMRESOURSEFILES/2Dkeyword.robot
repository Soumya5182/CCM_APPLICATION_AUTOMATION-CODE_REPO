*** Settings ***
Library  SeleniumLibrary
Library    ../pythondata/timeforthecurrentdate.py
*** Variables ***

*** Keywords ***
click on the 2D stepper 
    Click Button    //span[contains(text(),'2 D')]/parent::button
    Sleep    2s
    Wait Until Page Contains Element    //span[contains(text(),"Customer End Quantity")]/parent::div/following-sibling::div[3]/span/button      5s
input the customer end quantity
    Click Element    //span[contains(text(),"Customer End Quantity")]/parent::div/following-sibling::div[3]/span/button
     Sleep    1s
input the customer end quantity other column data
#    Click Element   //span[contains(text(),"Customer End Quantity")]/parent::div/following-sibling::div[8]/span/mat-datepicker-toggle
    Sleep    1s
    Click Element    //span[contains(text(),"Customer End Quantity")]/parent::div/following-sibling::div[9]/span/select
    Sleep    2s
    Click Element    //span[contains(text(),"Customer End Quantity")]/parent::div/following-sibling::div[9]/span/select/option[contains(text(),'Completed')]
    Sleep    1s
    Input Text    //span[contains(text(),"Customer End Quantity")]/parent::div/following-sibling::div[10]/span/textarea    enter the data in the customer quantity
    Sleep    2s
save the save and lock the customer end quantity data
    Scroll Element Into View    //span[contains(text(),"Customer End Quantity")]/parent::div/preceding-sibling::div/gui-checkbox
    Sleep    1s
    Click Element    //span[contains(text(),"Customer End Quantity")]/parent::div/preceding-sibling::div/gui-checkbox
    Sleep    1s
    Scroll Element Into View    //mat-card/button/span[contains(text(),'Save')]/parent::button
    Sleep    1s
    Click Element    //mat-card/button/span[contains(text(),'Save')]/parent::button
    Sleep    1s
    Page Should Contain    StockContainment records updated successfully
    
     

Enter the total number of Ok
    [Arguments]     ${value1}   ${value2}
    Press Keys     //div[contains(text(),'Quantity')]/parent::gui-html-view/parent::div/parent::div/parent::div/parent::div/following-sibling::div[1]/div/div/div/div[1]/div[2]     ${value1}
    Sleep    1s
    Press Keys      //div[contains(text(),'Quantity')]/parent::gui-html-view/parent::div/parent::div/parent::div/parent::div/following-sibling::div[1]/div/div/div/div[2]/div[2]    ${value2}
    Sleep    3s
    Click Element    //span[contains(text(),'Close')]/parent::button/preceding-sibling::button
    Sleep    2s
    ${val}=     Page Should Contain    Stock containment stage quantites updated successfully
    Log    ${val}
    Sleep    1s 
input the Customer's Other Locations
    Click Element    //span[contains(text(),"Customer's Other Locations")]/parent::div/following-sibling::div[3]/span/button
    Sleep    2s
input in Customer's Other Locations data
    Scroll Element Into View    //span[contains(text(),'View Unlock History')]/parent::button
    Sleep    1s
    Click Element   //span[contains(text(),"Customer's Other Locations")]/parent::div/following-sibling::div[8]/span/mat-datepicker-toggle
    Sleep    1s
    #Press Keys      //span[contains(text(),"Customer's Other Locations")]/parent::div/following-sibling::div[8]/span/mat-datepicker-toggle   ENTER
    Sleep    1s
    Click Element    //span[contains(text(),"Customer's Other Locations")]/parent::div/following-sibling::div[9]/span/select
    Sleep    2s
    Click Element    //span[contains(text(),"Customer's Other Locations")]/parent::div/following-sibling::div[9]/span/select/option[contains(text(),'Completed')]
    Sleep    1s
    Input Text    //span[contains(text(),"Customer's Other Locations")]/parent::div/following-sibling::div[10]/span/textarea    enter the data in the customer quantity
    Sleep    1s
Input the material in transist 
    Click Element    //span[contains(text(),"Material in transit.")]/parent::div/following-sibling::div[3]/span/button
input in the the material in transist
    Click Element    //span[contains(text(),"Material in transit")]/parent::div/following-sibling::div[8]/span/mat-datepicker-toggle
    Sleep    1s
    #Press Keys      //span[contains(text(),"Material in transit")]/parent::div/following-sibling::div[8]/span/mat-datepicker-toggle  ENTER
    Sleep    1S
    Click Element    //span[contains(text(),"Material in transit")]/parent::div/following-sibling::div[9]/span/select
    Sleep    2S
    Click Element    //span[contains(text(),"Material in transit")]/parent::div/following-sibling::div[9]/span/select/option[contains(text(),'Completed')]
    Sleep    2s
    Input Text    //span[contains(text(),"Material in transit")]/parent::div/following-sibling::div[10]/span/textarea    Customer's Other Locations
    Sleep    10s
date and time of the list
   ${abc}=  dateandtimes
   RETURN   ${abc}
###################################################2D-
