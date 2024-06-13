#Created By:-Soumyaranjan Routray
***Settings***
Documentation   this script id used for  the testing the creating the concern  using the automated
Library    SeleniumLibrary
#Library    XML
Resource   ../Resources/common_user.robot

*** Variables ***
#${browser}  chrome
#${url}  http://172.29.58.29:2023/auth/login
***Test Cases***
this page naigae the webpage

    start the browser
    #Open Browser    http://172.29.58.29:2023/auth/login     chrome
    #maximize browser window
    #Sleep    5s
    this is used for the login and the password
#------------Log in to the screen-----------------
    #input text      //input[@placeholder='Username *']      Venkat_01
    #input text     //input[@placeholder='Password *']       12345678
    #Sleep    5s
    #click button    //button[contains(text(), 'Login') ]

#-------------Click on the Transaction and Intiator tap---------cached

    Sleep   5s
    click element    //mat-icon[text()='credit_card']
    Sleep    5s
    Click Element    //a[@href="/transaction/initiatorworkbench"]
    Sleep    2s
    click element    //mat-icon[text()='cached']
    #click element    //span[text()='Initiator  Workbenchs']
    sleep  3s
#---------------Click on the New Concern Button--------------
    click element    //span[contains(text(),' New Concern')]
    Sleep    1s
#---------------Bug-Getting the Bottom of after clicking the New Concern Button------
#---------------Scroll up the Screen-------------------
#    Execute JavaScript    window.scrollTo(-1500,0)
    Scroll Element Into View    //*[@id="newConcern_unitid"]
    sleep    2s
    Click Element    //*[@id="newConcern_unitid"]
    Sleep    2s
    Press Keys  //div//input[@data-placeholder="Search"]    MSWIL
    Sleep    2s
    Press Keys  //div//input[@data-placeholder="Search"]    ENTER
    #Select From List By Label  //mat-option[@role='option'] MSWIL A15(P04)
    #Click Element    //span[text()=" MSWIL A15(P04) "]
    sleep    2s
#---------------Create the Concern Now-----------------------
#-------------Unit-------------
#--------------------Concern Repeated on-----------------
    Click Element    //button[@class="mat-focus-indicator mat-icon-button mat-button-base"]
    Click Element    //*[@class="mat-calendar-body-cell-content mat-focus-indicator mat-calendar-body-today"]
    Sleep    1
#-------------Concern Registered in Portal--------
    Click Element    //*[@id="newConcern_isConcernLocked"]
    Sleep    2s
    Click Element     //mat-option//span[text()=' Yes ']

    Sleep    1
#----------------Concern Category-------------
    Click Element    //*[@id="newConcern_concernCategoryId"]
    Sleep    1s
    Click Element    //span[text()=' A ']
    Sleep    1s
#------------------Window Person at Cust End-----------
    Click Element    //*[@id="newConcern_winPerAtCustEnd"]
    Input Text       //*[@id="newConcern_winPerAtCustEnd"]    Soumyaranjan
    Sleep    1s
#------------------Cust End Window Person Deptt -----------
    input text    //*[@id="newConcern_custEndWinPerDep"]    Routray
    Sleep    1
#-------------------Cust Code--------------
    Click Element    //mat-select[contains(@name, 'CustomerCode')]
    #Click Element    //span[contains(text(),' TATA Motors ')]
    Press Keys      //input[@placeholder="Search" and @id="mat-input-5"]     254
    Sleep    2S
    Press Keys      //input[@placeholder="Search" and @id="mat-input-5"]    ENTER

    Sleep    1s
#--------------Select the dropdown,Cust Product Code and Name-------------
    Click Element    //*[@id="newConcern_selectedCustomerpdCode"]
    Click Element    //*[@id="newConcern_selectedCustomerpdCode"]/div/div[2]/ul[2]/li[1]/div
    Click Element    //*[@id="newConcern_selectedCustomerpdCode"]/div/div[2]/ul[2]/li[2]/div
    Click Element    //*[@id="newConcern_selectedCustomerpdCode"]/div/div[2]/ul[2]/li[3]/div
    Sleep    1
#--------------Select the dropdown,MSSL Product Code and Name-------------
    Click Element    //*[@id="newConcern_selectedItems"]
    Click Element    //*[@id="newConcern_selectedItems"]/div/div[2]/ul[2]/li[1]/div
    Click Element    //*[@id="newConcern_selectedItems"]/div/div[2]/ul[2]/li[2]/div

    Sleep    1
#--------------Quantity-----------------
    Click Element    //*[@id="newConcern_Quantity"]
    Sleep    1
#    Handle Alert     accept
    Input Text     xpath=/html/body/div[4]/div[2]/div/mat-dialog-container/app-stock-quantity-dialouge/div/mat-card/gui-grid/gui-structure/div[1]/div[3]/div/div/div/div[1]/div[2]/span/input  20
    Sleep    2s
    Input Text     xpath=/html/body/div[4]/div[2]/div/mat-dialog-container/app-stock-quantity-dialouge/div/mat-card/gui-grid/gui-structure/div[1]/div[3]/div/div/div/div[1]/div[3]/span/input    30
    Input Text     xpath=/html/body/div[4]/div[2]/div/mat-dialog-container/app-stock-quantity-dialouge/div/mat-card/gui-grid/gui-structure/div[1]/div[3]/div/div/div/div[1]/div[4]/span/input    35
    Sleep    1
    Input Text    xpath=/html/body/div[4]/div[2]/div/mat-dialog-container/app-stock-quantity-dialouge/div/mat-card/gui-grid/gui-structure/div[1]/div[3]/div/div/div/div[2]/div[2]/span/input    40
    Input Text    xpath=/html/body/div[4]/div[2]/div/mat-dialog-container/app-stock-quantity-dialouge/div/mat-card/gui-grid/gui-structure/div[1]/div[3]/div/div/div/div[2]/div[3]/span/input    50
    Input Text    xpath=/html/body/div[4]/div[2]/div/mat-dialog-container/app-stock-quantity-dialouge/div/mat-card/gui-grid/gui-structure/div[1]/div[3]/div/div/div/div[2]/div[4]/span/input    60
    Sleep    1
    Click Element    //button//span[text()=' Add ']
    Sleep    1

 #---------------Countable----------------
    Click Element    //mat-slide-toggle[@id="newConcern_isCountable"]
    Sleep    1
#--------------Defcet Quantity-----------------
    Click Element    //*[@id="newConcern_defectiveQuantity"]
    Input Text       //input[@id="newConcern_defectiveQuantity"]    20
    Sleep    1
#---------------Concern Description---------------
    Click Element    //*[@id="newConcern_concernDesc"]
    Input Text    //*[@id="newConcern_concernDesc"]    this concern creation script is created by soumyaranjan routray
    Sleep    3s
#    Input Text       //*[@id="newConcern_concernDesc"]     The strategy can either be explicitly specified with a prefix or the strategy can be implicit.

#------------------Scroll down the screen------
    #Execute JavaScript    window.scrollTo(8000,0)
    Scroll Element Into View    //div[@id="cdk-step-content-0-1"]
    Sleep    2s
#----------------Type Of Concern----------
    Click Element    //*[@id="newConcern_concernTypeID"]
    Click Element    //span[text()=" Delivery "]
    Sleep    1
#-----------------Nature id Concern --------------
    Click Element    //*[@id="newConcern_natureofconcernID"]
    Click Element    //span[text()=" Samples rejection "]
    Sleep    1
#-----------------customer visitr required------------
    Click Element    //*[@id="newConcern_isconviregd"]
    Sleep    1
    Click Element    //mat-option//span[text()=" Yes "]
    Sleep    2s
#-----------------Date of the customer visit---------#
    #Click Element    //input[@id="newConcern_dateofvisit"]
    Click Element     xpath=/html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-login/div[1]/mat-horizontal-stepper/div/div[2]/div[1]/div[1]/div/div[6]/div[4]/mat-form-field/div/div[1]/div[3]/mat-datepicker-toggle/button
    Sleep    1s
    #Click Element    //*[@aria-label="January 9, 2024"]
    #Click Element    /div[text()=${current_date}]
    Click Element    //*[@class="mat-calendar-body-cell-content mat-focus-indicator mat-calendar-body-today"]
    #Sleep    1s



#------------------CMR Required to cust--------------#
    Click Element    //*[@id="newConcern_isCrmreqdtcust"]
    Sleep    2s
    Click Element    //div//mat-option//span[text()=' Yes ']
    Sleep    1
#----------------priliminary report required to customer----------------#
    Click Element    //*[@id="newConcern_isPriRepReqdtCust"]
    Sleep    1s
    Click Element    //div//mat-option//span[text()=' Yes ']
#---------------CMR Required to DAYs-------------
#    Click Element    //*[@class="mat-datepicker-toggle-default-icon ng-star-inserted"]
#    Click Element     xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-login/div[1]/mat-horizontal-stepper/div/div[2]/div[1]/div[1]/div/div[7]/div[2]/mat-form-field/div/div[1]/div[3]/mat-datepicker-toggle/button
#    Input Text       //*[@id="newConcern_crmreqdtcustdays"]
#    Click Element    //*[@id="mat-datepicker-11"]/div/mat-month-view/table/tbody/tr[3]/td[3]/button/div[1]
#   Click Element        xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-login/div[1]/mat-horizontal-stepper/div/div[2]/div[1]/div[1]/div/div[7]/div[2]/mat-form-field/div/div[1]/div[3]/mat-datepicker-toggle/button
    Sleep    1
#-------------------CMR submit to cust----------------
    #Click Element    //*[@id="newConcern_iscrmsubtocust"]
    #Click Element    //div//mat-option//span[text()=' Yes ']
    #Sleep    1
#--------------W/H Type---------------------
    Click Element    //*[@id="newConcern_whtypeID"]
    Click Element    //span[text()=" Testings "]
    Sleep    1
#------------concern know to customer------------------#
    #Click Element    //*[@id="newConcern_isConcernLocked"]
    #Sleep    2s
    #Click Element    //mat-option/span[text()=' Yes ']
#---------------Problem Description in detail-------------
    Click Element    //*[@id="newConcern_problemDesc"]
    Input Text      //*[@id="newConcern_problemDesc"]    hello,my concern is created sucessfully
    Sleep    1

#here cut the concern generation code

#save the button--------------------------------------------------------------------
    Click Element    //button[@id="newConcern_save"]
    Sleep    2s
#submit the button-------------------------------------------------------------------
    Click Element    //button[@id="newConcern_submitLockNewConcern"]
    Sleep    2s
#sure the pop up message to save the data-------------------------------------
    Click Element    //button//span[text()=" Yes "]
    Sleep    2s
#scroll from button to top
    Scroll Element Into View    //span[text()='Editable']
    Sleep    2s
#tab into the part concern details---(this is the second tab filed this not the mandatory field)---------------
    Click Element    //*[text()='Part Concern Details']
    Sleep    5s
#-------------------Concern related to part---------------
    Click Element    //*[@id="newConcern_isConcernRToPart"]
    Click Element    //div//mat-option//span[text()=' Yes ']
    Sleep    1
 #-------------------supplied code
    Click Element    //span[text()="Select"]
    Click Element    //*[@id="newConcern_selectMsslptCode"]/div/div[2]/ul[2]/li[1]/div
    Click Element    //*[@id="newConcern_selectMsslptCode"]/div/div[2]/ul[2]/li[2]/div
    Click Element    //*[@id="newConcern_selectMsslptCode"]/div/div[2]/ul[2]/li[3]/div
    Sleep    1
#-----------------Supplier Code Name-------------
    Click Element    //*[@id='newConcern_SuppliercodeName']
    Sleep    2
    Click Element    xpath=/html/body/div[4]/div[2]/div/mat-dialog-container/app-part-suppiler-details/div/mat-card[1]/table/tbody/tr[1]/td[2]/mat-select/div/div[1]
    Sleep    1
    Click Element    xpath=/html/body/div[4]/div[4]/div/div/div/mat-option[1]/span
    Sleep    1
    Click Element    xpath=/html/body/div[4]/div[2]/div/mat-dialog-container/app-part-suppiler-details/div/mat-card[1]/table/tbody/tr[2]/td[2]/mat-select/div/div[1]/span
    Click Element    xpath=/html/body/div[4]/div[4]/div/div/div/mat-option[2]/span
    Sleep    1
    Click Element    xpath=/html/body/div[4]/div[2]/div/mat-dialog-container/app-part-suppiler-details/div/mat-card[1]/table/tbody/tr[3]/td[2]/mat-select/div/div[1]/span
    Click Element    xpath=/html/body/div[4]/div[4]/div/div/div/mat-option[3]/span
    Sleep    1
    Click Element    //span[contains(text(),"Add")]
    Sleep    1

    #------------------    newConcern_concernGeneratedArea--------------
    Click Element    xpath://*[@id="newConcern_concernGeneratedArea"]
    Click Element    xpath://span[text()=" Quality Control "]
    Sleep    1
    #-----------Select Defect Code--------------
    Click Element    //*[@id="newConcern_defectCode"]
    Click Element    //span[text()=" ASS011 "]
    Sleep    1
    #--------------------  WH Running since------------------
    Input Text    //input[@placeholder="W/H Running since"]    2023
    Sleep    1
    #------------------Dispatched quantity--------------------
    Click Element    //*[@id="newConcern_dispatchedQty"]
    Input Text    //*[@id="newConcern_dispatchedQty"]    500
    Sleep    1
    #---------------no of defective w/h dispatched since
    Click Element   //input[@placeholder="No of W/h dispatched in suspected lot:"]
    Input Text  //input[@placeholder="No of W/h dispatched in suspected lot:"]    13
    Sleep    1
    #------------concern no/CKt no
    Click Element    //*[@id="newConcern_connectorNo"]
    Input Text    //*[@id="newConcern_connectorNo"]    10
    Sleep    1
    #-----------other area and process
    Click Element    //ng-multiselect-dropdown[@id="newConcern_selectedOtherAreaProcess"]
    Sleep    1s
    Click Element    //div[text()='Warranty']
    Sleep    2s
    Press Keys    //ng-multiselect-dropdown[@id="newConcern_selectedOtherAreaProcess"]   TAB
    #----------scroll down vertically scroll using javascript commaand
    #Execute Javascript  window.scrollBy(0,1000)
    #Scroll Element Into View    //button[@id="newConcern_saveNewConcern"]
    Execute JavaScript      window.scrollTo(0, document.body.scrollHeight)
    Sleep    5s
    #-------Upload the file-----------------#
   #Click Element    //*[@id="newConcern_fileUpload"]
   Choose File    //*[@id="newConcern_fileUpload"]   D:/hiii.pdf

    Sleep    10s
    #------save the second steper data------#
    Click Element    //button[@id="newConcern_saveNewConcern"]









