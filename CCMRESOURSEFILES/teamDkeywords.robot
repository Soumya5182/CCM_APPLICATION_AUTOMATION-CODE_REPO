*** Settings ***
Library     SeleniumLibrary
Library    Collections
*** Variables ***
${index}    0
${rejectedtext}     this concern is rejected by automated script
*** Keywords ***
select the concern number check box
    Click Element    //thead[@role="rowgroup"]/parent::table/tbody/tr[1]/td[1]/mat-checkbox
    Sleep    1s
scroll to team define button 
    Scroll Element Into View    //span[contains(text(),'Concern In Progress')]
    Sleep    2s
click on the team define button 
    Click Button    //span[contains(text(),'Define Team')]/parent::button
    Sleep    2s
click on the concern number check box
    Click Element    //mat-label[contains(text(),'Concern No')]/parent::div/ng-multiselect-dropdown/div
    Click Element    //mat-label[contains(text(),'Concern No')]/parent::div/ng-multiselect-dropdown/div/div[2]/ul[2]
    Sleep    3s
Admit Process
            Click Button    //span[contains(text(),'Admit')]/parent::button
            Sleep    2s
            Click Element    //p[contains(text(),'Are you sure you want')]/parent::div/div/div/div/button[2]
Reject Process
            Click Element    //span[contains(text(),'Reject')]/parent::button
            Sleep    1s
            Input Text    //textarea[@id="rejectConcern_reason"]    ${rejectedtext}
            Sleep    1s
            Click Element    //textarea[@id="rejectConcern_reason"]/parent::div/parent::div/div[2]/button[2]
            Sleep    2S
            Close Window
click on the Admit/Reject
      [Arguments]    ${admin/reject}
     Run Keyword If    "${admin/reject}" == "Admit"    Admit Process
...    ELSE    Reject Process
     Sleep    5s
2D screen team define
    Click Element    //span[contains(text(),'Stage')]/parent::div/parent::div
    Sleep    1s
    Click Element    //span[contains(text(),'2')]/parent::mat-option
    Sleep   1s
    Click Element    //mat-select[@placeholder="Area"]/parent::div
    Sleep    1s
    Click Element    //span[contains(text(),'Stock Containment')]//parent::mat-option
    Sleep    1s
    Click Element   //mat-label[contains(text(),'Employee')]/parent::div/ng-multiselect-dropdown/div
    Sleep    1s
    Press Keys    //mat-label[contains(text(),'Employee')]/parent::div/ng-multiselect-dropdown/div/div[2]/ul[1]/li/input  Engg
    Sleep    1s
    Click Element    //mat-label[contains(text(),'Employee')]/parent::div/ng-multiselect-dropdown/div/div[2]/ul[2]/li[1]
    Sleep    1s
    Click Element   //mat-label[contains(text(),'Employee')]/parent::div/ng-multiselect-dropdown/div
    Sleep    1s
    Click Button    //span[contains(text(),'Add')]/parent::button
    Sleep    1s
    Click Element    //mat-select[@placeholder="Area"]/parent::div
    Click Element    //span[contains(text(),'Process Correction')]//parent::mat-option
    Sleep    2s
    Click Button    //span[contains(text(),'Add')]/parent::button
    Sleep    2s
    Click Element    //mat-select[@placeholder="Area"]/parent::div
    Click Element    //span[contains(text(),'Customer End Visit Details')]//parent::mat-option
    Sleep    1s
    Click Button      //span[contains(text(),'Add')]/parent::button
    Sleep    1s
    Click Element    //mat-select[@placeholder="Area"]/parent::div
    Click Element    //span[contains(text(),'5W2H Analysis')]//parent::mat-option
    Sleep    1s
    Click Button     //span[contains(text(),'Add')]/parent::button
    Sleep    2s
3D screen team define
    Click Element    //*[@placeholder="Stage"]
     Sleep    1s
    Click Element    //span[contains(text(),'3')]/parent::mat-option
    Sleep    1s
    Click Element    //mat-select[@placeholder="Area"]/parent::div
    Sleep    1s
    Click Element    //span[contains(text(),'Investigation Summary')]//parent::mat-option
    Sleep    1s
    Click Button     //span[contains(text(),'Add')]/parent::button
    Sleep    1s
    Click Element    //mat-select[@placeholder="Area"]/parent::div
    Sleep    1s
    Click Element    //span[contains(text(),'Review Previous Concern')]//parent::mat-option
    Sleep    1s
    Click Button     //span[contains(text(),'Add')]/parent::button
    Sleep    1s
    Click Element    //mat-select[@placeholder="Area"]/parent::div
    Sleep    1s
    Click Element   //span[contains(text(),'Cause Effect Diagram')]//parent::mat-option
    Sleep    1s
    Click Button     //span[contains(text(),'Add')]/parent::button
     Sleep    1s
    Click Element    //mat-select[@placeholder="Area"]/parent::div
    Sleep    1s
    Click Element   //span[contains(text(),'Why Analysis')]//parent::mat-option
    Sleep    1s
    Click Button     //span[contains(text(),'Add')]/parent::button
    Sleep    1s
    Click Element    //mat-select[@placeholder="Area"]/parent::div
    Sleep    1s
    Click Element    //span[contains(text(),'Root Causes')]//parent::mat-option
    Sleep    1s
    Click Button     //span[contains(text(),'Add')]/parent::button
    Sleep    4s
4D counter measure
    Click Element    //*[@placeholder="Stage"]
     Sleep    1s
    Click Element    //span[contains(text(),'4')]/parent::mat-option
    Sleep    1s
    Click Element    //mat-select[@placeholder="Area"]/parent::div
    Sleep    1s
    Click Element    //span[contains(text(),'Counter Measure')]//parent::mat-option
    Sleep    1s
    Click Button     //span[contains(text(),'Add')]/parent::button
    Sleep    1s
    Click Element    //mat-select[@placeholder="Area"]/parent::div
    Sleep    1s
    Click Element    //span[contains(text(),'Action Implementation Status')]//parent::mat-option
    Sleep    1s
    Click Button     //span[contains(text(),'Add')]/parent::button
    Sleep    1s
    Click Element    //mat-select[@placeholder="Area"]/parent::div
    Sleep    1s
    Click Element   //span[contains(text(),'Training & Awareness')]//parent::mat-option
    Sleep    1s
    Click Button     //span[contains(text(),'Add')]/parent::button
    Sleep    4s
5D standardization
    Click Element    //*[@placeholder="Stage"]
    Sleep    1s
    Click Element    //span[contains(text(),'5')]/parent::mat-option
    Sleep    1s
    Click Element    //mat-select[@placeholder="Area"]/parent::div
    Sleep    1s
    Click Element    //span[contains(text(),'Five D Standardization')]//parent::mat-option
    Sleep    1s
    Click Button     //span[contains(text(),'Add')]/parent::button
    Sleep    4s
6D verification
    Click Element    //*[@placeholder="Stage"]
    Sleep    1s
    Click Element    //span[contains(text(),'6')]/parent::mat-option
    Sleep    1s
    Click Element    //mat-select[@placeholder="Area"]/parent::div
    Sleep    1s
    Click Element    //span[contains(text(),'Six D Verifications')]//parent::mat-option
    Sleep    1s
    Click Button     //span[contains(text(),'Add')]/parent::button
    Sleep    4s
7D monitoring
    Click Element    //*[@placeholder="Stage"]
     Sleep    1s
    Click Element    //span[contains(text(),'7')]/parent::mat-option
    Sleep    1s
    Click Element    //mat-select[@placeholder="Area"]/parent::div
    Sleep    1s
    Click Element    //span[contains(text(),'Defect Monitoring')]//parent::mat-option
    Sleep    1s
    Click Button     //span[contains(text(),'Add')]/parent::button
    Sleep    1s
    Click Element    //mat-select[@placeholder="Area"]/parent::div
    Sleep    1s
    Click Element    //span[contains(text(),'Temporary')]//parent::mat-option
    Sleep    1s
    Click Button     //span[contains(text(),'Add')]/parent::button
    Sleep    1s
    Click Element    //mat-select[@placeholder="Area"]/parent::div
    Sleep    1s
    Click Element   //span[contains(text(),'Countermeasure Actions Monitoring')]//parent::mat-option
    Sleep    1s
    Click Button     //span[contains(text(),'Add')]/parent::button
    Sleep    4s
8d Clouser
    Click Element    //*[@placeholder="Stage"]
    Sleep    1s
    Click Element    //span[contains(text(),'8')]/parent::mat-option
    Sleep    1s
    Click Element    //mat-select[@placeholder="Area"]/parent::div
    Sleep    1s
    Click Element    //span[contains(text(),'Eight D Closure Component')]//parent::mat-option
    Sleep    1s
    Click Button     //span[contains(text(),'Add')]/parent::button
    Sleep    1s
    Click Element    //mat-select[@placeholder="Area"]/parent::div
    Sleep    1s
    Click Element    //span[contains(text(),'Eight D Horizontal')]//parent::mat-option
    Sleep    1s
    Click Button     //span[contains(text(),'Add')]/parent::button
    Sleep    4s
CMR process
    Click Element    //*[@placeholder="Stage"]
    Sleep    1s
    Click Element    //span[contains(text(),'CMR')]/parent::mat-option
    Sleep    1s
    Click Element    //mat-select[@placeholder="Area"]/parent::div
    Sleep    1s
    Click Element    //span[contains(text(),'CounterMeasureReport')]//parent::mat-option
    Sleep    1s
    Click Button     //span[contains(text(),'Add')]/parent::button
    Sleep    4s
click on the save and save&lock
    Click Button    //span[text()=' Save ']/parent::button
    Sleep    2s
    Click Element    //span[text()=' Save & Lock ']/parent::button
    Sleep    1s
    Click Button    //span[contains(text(),'Submit')]/parent::button
#2#this keyword used for the copy functionality 
select on the from concer number
    [Arguments]     ${fromconnumber}
    Scroll Element Into View    //a[contains(text(),'${fromconnumber}')]/parent::span/parent::span/parent::td/preceding-sibling::td/mat-checkbox
    Sleep    2s
    Click Element    //a[contains(text(),'${fromconnumber}')]/parent::span/parent::span/parent::td/preceding-sibling::td/mat-checkbox
    Sleep    2S
click on the copy toggle button
    Click Element    //strong[contains(text(),'Copy')]/parent::div/mat-slide-toggle
    Sleep    1s
click on the from concern number
    Click Element    //strong[contains(text(),'From')]/parent::div/div[1]/ng-multiselect-dropdown/div
    Sleep    1s
    Click Element    //strong[contains(text(),'From')]/parent::div/div[1]/ng-multiselect-dropdown/div/div[2]/ul[2]
    Sleep    1s
click on the To concern number
    Click Element    //strong[contains(text(),'To')]/parent::div/div[2]/ng-multiselect-dropdown/div
    Sleep    1s
    Click Element    //strong[contains(text(),'To')]/parent::div/div[2]/ng-multiselect-dropdown/div/div[2]/ul[2]
    Sleep    1s
click on the copy button
    Click Element    //span[contains(text(),'Copy')]/parent::button
    Sleep    1s







    


     








