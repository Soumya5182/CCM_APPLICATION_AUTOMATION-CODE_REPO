*** Settings ***
Library     SeleniumLibrary
Library    XML
*** Variables ***
${browser}  chrome
${url}  http://172.29.58.29:2023/auth/login
${Enter}    ENTER
${dummy}    Lorem ipsum dolor sit amet, consectetuer adipiscing elit.Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut.
${UPLOAD_BUTTON}    //*[@id="newConcern_fileUpload"]
*** Keywords ***
Open the rul and maximize
    [Arguments]    ${urls}
    Open Browser    ${urls}  ${browser}
    Maximize Browser Window
    Sleep    2s
Login the user id and password
    [Arguments]     ${username}     ${password}
    Input Text    //span[text()='Enter your username and password']/following-sibling::input[1]    ${username}
    Input Text    //span[text()='Enter your username and password']/following-sibling::input[2]    ${password}
    Sleep    2s
    Click Button    //button[contains(text(),'Log')]
    Sleep    4s
Click on the workbench
    [Arguments]     ${init}     #initiatorworkbench
    Wait Until Page Contains   External Concern Management Portal  20s
    Mouse Over    //div[contains(@class,'active-x')]
    Sleep    2s
    Wait Until Page Contains Element    //span[contains(text(),'Transaction')]  20s
    ${get}=     Get Selenium Timeout
    Log    ${get}
    Click Element  //span[contains(text(),'Transaction')]
    Wait Until Page Contains Element    //a[contains(@href,'${init}')]   20s
    Click Link    //a[contains(@href,'${init}')]
    Sleep    3S
create a new concern number
    #Click Button    //span[contains(text(),'New Concern')]/parent::button
    Click Element    //span[text()=' New Concern ']
    Sleep    3S
select the unit
    Click Element    //mat-select[@id='newConcern_unitid']
    Sleep    1s
    Click Element   //div[@id="newConcern_unitid-panel"]/mat-option[1]/span[1]
    Sleep    2S
select on the concern reported on
    Click Element    //input[@id="newConcern_concernReported"]/following-sibling::mat-datepicker-toggle
    Click Element    //*[@class="mat-calendar-body-cell-content mat-focus-indicator mat-calendar-body-today"]
    Sleep    1s
select on the concern register in protal
    Click Element    //*[@id="newConcern_isConcernLocked"]
    Click Element    //div[@id="newConcern_isConcernLocked-panel"]/input/following-sibling::mat-option[1]
    Sleep    1s
select on the concern category
    Click Element    //*[@id="newConcern_concernCategoryId"]
    Click Element    //span[text()=' A ']
    Sleep    1s
Enter Window person at customer End
    [Arguments]     ${person_name}
    Click Element    //*[@id="newConcern_winPerAtCustEnd"]
    Input Text       //*[@id="newConcern_winPerAtCustEnd"]    ${person_name}
    Sleep    1s
customer end window person deptt
    [Arguments]     ${dept}
    Click Element    //*[@id="newConcern_custEndWinPerDep"]
    Input Text    //*[@id="newConcern_custEndWinPerDep"]    ${dept}
    Sleep    1s
select the customer code
    [Arguments]     ${customercode}
    Click Element   //mat-select[@name='CustomerCode'or@id="newConcern_customerId"]
    Press Keys      //div[@id="newConcern_customerId-panel"]/input  ${customercode}
    Wait Until Page Contains Element    //div[@id="newConcern_customerId-panel"]/mat-option[1]  20s
    Click Element   //div[@id="newConcern_customerId-panel"]/mat-option[1]
    Sleep    3s
select the customer group
    Wait Until Page Contains Element    //mat-select[@id='newConcern_concernGroupId']   20s
    Click Element    //mat-select[@id='newConcern_concernGroupId']
    ${elem}=    Set Variable    //div[@id="newConcern_concernGroupId-panel"]/mat-option[2]
    ${count}=    Get Element Count    ${elem}
    Log    ${count}
    Run Keyword If    ${count} > 0    Click Element    ${elem}
...    ELSE    Click Element    //div[@id="newConcern_concernGroupId-panel"]/mat-option[1]
    Sleep    2s
customer product code & name
    [Arguments]     ${customer_productcode}
    Click Element   //ng-multiselect-dropdown[@id="newConcern_selectedCustomerpdCode"]
    Press Keys      //ng-multiselect-dropdown[@id="newConcern_selectedCustomerpdCode"]//div[@class='multiselect-dropdown']/div[2]//li/input[@placeholder="Search"]  ${customer_productcode}
    Click Element   //ng-multiselect-dropdown[@id="newConcern_selectedCustomerpdCode"]//div[@class='multiselect-dropdown']/div[2]/ul[2]/li[1]
    Sleep    1s
select the motherson product code
    [Arguments]     ${Motherson_productcode}
    Click Element    //mat-label[text()='Motherson product code & name']/following-sibling::ng-multiselect-dropdown
    Press Keys      //ng-multiselect-dropdown[@id="newConcern_selectedItems"]//div[@class='multiselect-dropdown']/div[2]//li/input[@placeholder="Search"]   ${Motherson_productcode}
    Click Element   //ng-multiselect-dropdown[@id="newConcern_selectedItems"]//div[@class='multiselect-dropdown']/div[2]/ul[2]/li[1]
    Sleep    1s
Add the Quantity
    Click Button    //button[contains(@id,'newConcern_Quantity')]
    Sleep    2s
Enter Stock Qty Available at Customer's End
    [Arguments]     ${quantity1}    ${quantity2}
    Press Keys     //h1[contains(text(),'Stock Quantity Details')]/following-sibling::div[1]/mat-card/gui-grid/gui-structure/div[1]/div[3]/div/div/div/div[1]/div[2]    ${quantity1}
    Press Keys      //h1[contains(text(),'Stock Quantity Details')]/following-sibling::div[1]/mat-card/gui-grid/gui-structure/div[1]/div[3]/div/div/div/div[2]/div[2]   ${quantity2}
    Sleep    1s
Enter Stock at Customer's other Locations
    [Arguments]     ${quantity3}    ${quantity4}
    Press Keys    //h1[contains(text(),'Stock Quantity Details')]/following-sibling::div[1]/mat-card/gui-grid/gui-structure/div[1]/div[3]/div/div/div/div[1]/div[3]    ${quantity3}
    Press Keys    //h1[contains(text(),'Stock Quantity Details')]/following-sibling::div[1]/mat-card/gui-grid/gui-structure/div[1]/div[3]/div/div/div/div[2]/div[3]    ${quantity4}
    Sleep    1s
Enter Stock Qty in Transit
    [Arguments]     ${quantity5}     ${quantity6}
    Press Keys    //h1[contains(text(),'Stock Quantity Details')]/following-sibling::div[1]/mat-card/gui-grid/gui-structure/div[1]/div[3]/div/div/div/div[1]/div[4]    ${quantity5}
    Press Keys    //h1[contains(text(),'Stock Quantity Details')]/following-sibling::div[1]/mat-card/gui-grid/gui-structure/div[1]/div[3]/div/div/div/div[2]/div[4]    ${quantity6}
    Click Button    //span[contains(text(),'Add')]/parent::button
    Sleep    1s
Enter the defect quantity
    [Arguments]     ${qua}
    Press Keys    //input[@id="newConcern_defectiveQuantity"]/parent::div    ${qua}
Enter the lot of details of defextive parts
    [Arguments]     ${details}
    Press Keys    //input[@id="newConcern_lotdtaildfectvpart"]/parent::div    ${details}
Enter the other part details
    [Arguments]     ${otherpart}
    Press Keys    //input[@id="newConcern_otherParts"]/parent::div    ${otherpart}
    
Model Project /vehicle name only
    [Arguments]     ${slno}  ${vname}
    Click Button    //span[contains(text(),'Model')]/parent::button
    Sleep    2s
    #Click Button    //mat-icon[text()='add_circle_outline']
    Double Click Element    //mat-icon[text()='add_circle_outline']
    Sleep    2s
    Press Keys  //th[text()='Sr No']/parent::tr/following-sibling::tr[1]/td[1]  ${slno}
    Press Keys  //th[text()='Sr No']/parent::tr/following-sibling::tr[1]/td[2]  ${vname}
    Click Button    //span[contains(text(),'Add')]/parent::button
    Sleep    2s
Input the concern description
    Input Text    //textarea[contains(@id,"newConcern_concernDesc")]    ${dummy}
scroll the page
    #Execute JavaScript    window.scrollTo(0,600)
    Scroll Element Into View    //textarea[@id="newConcern_problemDesc"]/parent::div
    Sleep    2s
Select type of concern
    [Arguments]  ${entertype}
    Click Element    //mat-select[contains(@id,"newConcern_concernTypeID")]/parent::div
    Press Keys  //div[@id="newConcern_concernTypeID-panel"]/input   ${entertype}
    Press Keys  //div[@id="newConcern_concernTypeID-panel"]/input   ENTER
    Sleep    2s
Select the nature of concern
    [Arguments]     ${other}
    Click Element    //mat-select[@id="newConcern_natureofconcernID"]
    Press Keys  //div[@id="newConcern_natureofconcernID-panel"]/input[@placeholder="Search"]    ${other}
    Press Keys  //div[@id="newConcern_natureofconcernID-panel"]/input[@placeholder="Search"]    ENTER
    Sleep    2s
Customer Visit required
    [Arguments]     ${check}
    Click Element    //mat-select[@id='newConcern_isconviregd']
    Click Element    //div[@id='newConcern_isconviregd-panel']/mat-option/span[contains(text(),'${check}')]
    Log    ${check}
   Run Keyword If    "${check}" == "Yes"    Press Keys   //input[@id="newConcern_dateofvisit"]/parent::div/mat-datepicker-toggle/button     ENTER
...    ELSE    Click Element    //input[@id='newConcern_dateofvisit']
   Sleep    2s
Select CMR require To customer
    [Arguments]     ${CMR}
    Click Element    //mat-select[@id="newConcern_isCrmreqdtcust"]
    Click Element    //div[@id="newConcern_isCrmreqdtcust-panel"]/mat-option/span[contains(text(),'${CMR}')]
    Sleep    1S
Select Priliminary report required to customer
    [Arguments]     ${PRILM}
    Click Element    //mat-select[@id='newConcern_isPriRepReqdtCust']
    Click Element    //div[@id="newConcern_isPriRepReqdtCust-panel"]/mat-option/span[contains(text(),'${PRILM}')]
    Sleep    2s
Select W/H type
    [Arguments]     ${W/H type}
    Click Element   //mat-select[@id="newConcern_whtypeID"]
    Press Keys     //div[@id="newConcern_whtypeID-panel"]/input[@placeholder="Search"]   ${W/H type}
    Press Keys    //div[@id="newConcern_whtypeID-panel"]/input[@placeholder="Search"]   ENTER
    Sleep    2s
Input the problem description in details
    Input Text   //textarea[@id="newConcern_problemDesc"]    ${dummy}
    Sleep    2s
Scroll to button
    Scroll Element Into View    //input[@id="newConcern_cmrSubByName"]/parent::div
    Sleep    1s
cmr required to customer check
    Element Should Be Disabled    //input[@id="newConcern_crmreqdtcustdays"]
    Sleep    1s
Prilim required to customer check
    Element Should Be Disabled    //input[@id="newConcern_priRepReqdtCustOn"]
    Sleep    1s
cmr submited check 
    Element Should Be Disabled    //input[@id="newConcern_crmSubmittedOn"]
    Sleep    1s
cmr submiited by check
    Element Should Be Disabled    //input[@id="newConcern_cmrSubByName"]
scroll to more details 
    Scroll Element Into View    //span[contains(text(),'More Details')]/parent::button 
    Sleep    2s
upload the mutiple file
   Choose File    //*[@id="newConcern_fileUpload"]   D:/hiii.pdf
   Sleep    2s
click on the save button
    Click Button    //span[contains(text(),'Save')]/parent::button[@id="newConcern_save"]
    Sleep    3s
click on the save and lock
    Wait Until Page Contains Element    //span[contains(text(),'Submit & lock')]/parent::button[@id="newConcern_submitLockNewConcern"]  20s
    Click Button    //span[contains(text(),'Submit & lock')]/parent::button[@id="newConcern_submitLockNewConcern"]
    Wait Until Page Contains    Data will be locked. Do you want to continue?
    Click Button    //span[text()=' Yes ']/parent::button

#this key word used for more details in 1D.
All catagory on
    Click Element    //mat-slide-toggle[@mattooltip="Show All Category Data"]/label
    Sleep    3s

click on the concern number 
    Click Element    //thead[@role="rowgroup"]/parent::table/tbody/tr[1]/td[2]/span/span/a
    Sleep    4s
click on the more details tab
    Click Element    //p[contains(text(),'More Details')]/parent::div/parent::div[1]/parent::mat-step-header
    Sleep    1s
select is concern related to part 
    Click Element    //mat-select[@id="newConcern_isConcernRToPart"]
    Click Element    //div[@id="newConcern_isConcernRToPart-panel"]/mat-option[1]
    Sleep    1s
Select the motherson part code and name 
    Click Element    //mat-label[contains(text(),'Motherson part code & name')]/parent::div/ng-multiselect-dropdown[@id="newConcern_selectMsslptCode"]/div
    Click Element    //ng-multiselect-dropdown[@id="newConcern_selectMsslptCode"]/div/div[2]/ul[2]/li[1]
    Click Element    //ng-multiselect-dropdown[@id="newConcern_selectMsslptCode"]/div/div[2]/ul[2]/li[2]
    Click Element    //ng-multiselect-dropdown[@id="newConcern_selectMsslptCode"]/div/div[2]/ul[2]/li[3]
    Sleep    5s
click on the Supplier code/Name
    Click Button    //span[contains(text(),'Supplier code/Name')]/parent::button
    Sleep    1s
    Click Element    //th[contains(text(),'Supplier Code & Name')]/parent::tr/parent::thead/following-sibling::tbody/tr[1]/td[2]
    Click Element    //input[@placeholder="Search"]/parent::div/mat-option[1]
    Sleep    1s
    Click Element    //th[contains(text(),'Supplier Code & Name')]/parent::tr/parent::thead/following-sibling::tbody/tr[2]/td[2]
    Click Element    //input[@placeholder="Search"]/parent::div/mat-option[2]
    Sleep    1s
    Click Element    //th[contains(text(),'Supplier Code & Name')]/parent::tr/parent::thead/following-sibling::tbody/tr[3]/td[2]
    Click Element    //input[@placeholder="Search"]/parent::div/mat-option[3]
    Click Button     //span[contains(text(),'Add')]/parent::button
    Sleep    1s
 process code and description
    Click Element    //mat-select[@id="newConcern_processFlowId"]
    Click Element    //div[@id="newConcern_processFlowId-panel"]/mat-option[3]
    Sleep    1s
 Concern generated from Area and process
    [Arguments]     ${processarea}
    Click Element    //mat-select[@id="newConcern_concernGeneratedArea"]
    Press Keys     //div[@id="newConcern_concernGeneratedArea-panel"]/input[@placeholder="Search"]  ${processarea}
    Press Keys     //div[@id="newConcern_concernGeneratedArea-panel"]/input[@placeholder="Search"]      ENTER
    Sleep    1s
 select on the defect code
    [Arguments]     ${Defectno}
    Click Element    //mat-select[@id="newConcern_defectCode"]
    Press Keys  //div[@id="newConcern_defectCode-panel"]/input[@placeholder="Search"]   ${Defectno}
    Press Keys  //div[@id="newConcern_defectCode-panel"]/input[@placeholder="Search"]   ENTER
    Sleep    1s
 Enter w/h since
  [Arguments]    ${since}
  Press Keys    //input[@id="newConcern_whRunningDate"]    ${since}
  Sleep    1s
 Enter dispach qty
    [Arguments]     ${dispatch}
    Press Keys    //input[@id="newConcern_dispatchedQty"]    ${dispatch}
    Sleep    1s
 Enter defective w/h dispatch 
    [Arguments]     ${Dispatch}
    Press Keys    //input[@id="newConcern_whDispachedInLot"]    ${Dispatch}
    Sleep    1s
 connector no/CKt no
    [Arguments]     ${connector}
    Press Keys    //input[@id="newConcern_connectorNo"]    ${connector}
    Sleep    1s
 Other area and process
    Click Element    //ng-multiselect-dropdown[@id="newConcern_selectedOtherAreaProcess"]/div
    Click Element    //ng-multiselect-dropdown[@id="newConcern_selectedOtherAreaProcess"]//div[@class="dropdown-list"]/ul[2]/li[1]
    Click Element    //ng-multiselect-dropdown[@id="newConcern_selectedOtherAreaProcess"]//div[@class="dropdown-list"]/ul[2]/li[2]
    Click Element    //ng-multiselect-dropdown[@id="newConcern_selectedOtherAreaProcess"]//div[@class="dropdown-list"]/ul[2]/li[3]
    Sleep    10s
 Repeated Concern  #Yes
    [Arguments]     ${valid}
    Click Element    //mat-select[@id="newConcern_isRepeatedConcern"]
    Click Element    //div[@id="newConcern_isRepeatedConcern-panel"]/mat-option/span[contains(text(),'${valid}')]
 redirect to view 
    Scroll Element Into View    //span[contains(text(),'Save')]/parent::button[@id="newConcern_saveNewConcern"]
    Sleep    2s
 click on the more details save button 
    Click Button    //span[contains(text(),'Save')]/parent::button[@id="newConcern_saveNewConcern"]

















    



