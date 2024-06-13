***Settings***
Library    SeleniumLibrary
Library    XML

***Test Cases***
#create concern
#define the team for created concern
#qpc cell owner owner define the  team

Navigate to a Web Page
    Open Browser    http://172.29.58.29:2023/auth/login     chrome

#    log to console   bye

#------------Log in to the screen-----------------
    input text      //input[@placeholder='Username *']      Anmol_S8
    input text     //input[@placeholder='Password *']       12345678
    click button    //button[contains(text(), 'Login') ]
    Sleep    3
#-------------Click on the Transaction and Intiator tap---------
    click element    //mat-icon[text()='credit_card']

    click element    //span[text()='Unit Workbench']
    sleep  3s
 #---------------toggle on-----------------------------
    #Click Element    xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-unit-home-workbench/div[3]/div[1]/div[2]/mat-slide-toggle/label
    sleep  3s
 #------------------Scroll down the screen------
    Execute JavaScript    window.scrollTo(0,400)
    Sleep    2s

 #---------select the check box for  the team define----------------(HERE CHANGE THE CONCERN NO XPATH)(change)
  Click Element    xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-unit-home-workbench/mat-sidenav-container/mat-sidenav-content/div/div/table/tbody/tr[9]/td[1]

  sleep  1s
 #----------click the button on the define the team----------------
    click element    //span[text()=' Define Team']
    sleep  2s
 #------For copy the toggle on----------------- 
#    Click Element    xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[1]/mat-card/mat-card-content/div[1]/div/div/mat-slide-toggle/label/span[1]
     Click Element    /html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-unit-home-workbench/mat-sidenav-container/mat-sidenav-content/div/div/table/tbody/tr[1]/td[1]/mat-checkbox/label/span[1]
    Sleep   2s
  #-----select the concern drop down------------------------Select(change)
   click element    //span[text()='Select']
   Click Element    xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[1]/div[1]/ng-multiselect-dropdown/div/div[2]/ul[2]/li
   Sleep    2s

   #-----click on the admit button------------------------ mat-focus-indicator mat-raised-button mat-button-base mat-accent
    Click Element     //*[@class="mat-focus-indicator mat-raised-button mat-button-base mat-accent"]
    Sleep   2s
                                      #------------------------2D-----------------------#


                                        #2D STOCK CONTAINMENT#
    Click Element      xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select
    Click Element     //span[text()=' 2 D ']
    Sleep    2s

   #click on the area button 
   Click Element   xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[1]/mat-form-field/div/div[1]/div

   Click Element    //span[text()=" Stock Containment "]
   Sleep    1sec
   #--------------emplyee column-
   Click Element    xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[3]/ng-multiselect-dropdown/div/div[1]/span

   #mohit xpath
   Click Element    xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[3]/ng-multiselect-dropdown/div/div[2]/ul[2]/li[9]/div
   
   Sleep    2sec
   #----------ADD button --------------
   Click Element    //span[text()=" Add "]
   
   Sleep    2sec
                                           #2D PROCESS CORRECTION#
   #click on the stage------
    #Click Element      xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select
    #Click Element     //span[text()=' 2 D ']

    #click on the area button
   Click Element   xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[1]/mat-form-field/div/div[1]/div

   Click Element    //span[text()=" Process Correction "]

   Sleep    2sec
   #----------ADD button --------------
   Click Element    //span[text()=" Add "]
   Sleep    2sec
                                     #CUSTOMER END VISIT DETAILS#
   #click on the stage------
    #Click Element      xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select
    #Click Element     //span[text()=' 2 D ']

    #click on the area button
   Click Element   xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[1]/mat-form-field/div/div[1]/div

   Click Element    //span[text()=" Customer End Visit Details "]

   Sleep    2sec
   #----------ADD button --------------
   Click Element    //span[text()=" Add "]
   Sleep    2sec

                                               #5W2H Analysic#
   #click on the stage------
    #Click Element      xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select
    #Click Element     //span[text()=' 2 D ']

    #click on the area button
   Click Element   xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[1]/mat-form-field/div/div[1]/div

   Click Element    //span[text()=" 5W2H Analysis "]

   Sleep    2sec
   #----------ADD button --------------
   Click Element    //span[text()=" Add "]
   Sleep    2sec


          #----------------------------------------------------3D-----------------------------------------------#

                                                   #Investigation Summary #

    #click on the stage------
    Click Element      xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select
    Click Element     //span[text()=' 3 D ']
    Sleep    1sec

      #click on the area button
   Click Element   xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[1]/mat-form-field/div/div[1]/div

   Click Element    //span[text()=" Investigation Summary "]
   Sleep    2sec
   #remove the emplyee
   Click Element    xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[3]/ng-multiselect-dropdown/div/div[1]/span/span[1]/span/a
   Sleep     1sec
      #--------------emplyee column-
   Click Element    xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[3]/ng-multiselect-dropdown/div/div[1]/span
   #Aman xpath
   Click Element    xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[3]/ng-multiselect-dropdown/div/div[2]/ul[2]/li[16]

   Sleep    2sec
      #----------ADD button --------------
   Click Element    //span[text()=" Add "]
   Sleep    2sec

                                 #Review Previous Concern#

    #click on the area button
   Click Element   xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[1]/mat-form-field/div/div[1]/div
   Click Element    //span[text()=" Review Previous Concern "]
   Sleep    2sec
        #----------ADD button --------------
   Click Element    //span[text()=" Add "]
   Sleep    2sec
                                 #Cause Effect Diagram#
    #click on the area button
   Click Element   xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[1]/mat-form-field/div/div[1]/div
   Click Element    //span[text()=" Cause Effect Diagram "]
   Sleep    2sec
           #----------ADD button --------------
   Click Element    //span[text()=" Add "]
   Sleep    2sec

                                 #why analysic#
      #click on the area button
   Click Element   xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[1]/mat-form-field/div/div[1]/div
   Click Element    //span[text()=" Why Analysis "]
   Sleep    2sec
              #----------ADD button --------------
   Click Element    //span[text()=" Add "]
   Sleep    2sec

                               #root cause#

      #click on the area button
   Click Element   xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[1]/mat-form-field/div/div[1]/div
   Click Element    //span[text()=" Root Causes "]
   Sleep    2sec
                  #----------ADD button --------------
   Click Element    //span[text()=" Add "]
   Sleep    2sec


              #--------------------------------------4D---------------------------------------------------------#

                                               #Counter Measure#

     #click on the stage------
    Click Element      xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select
    Click Element     //span[text()=' 4 D ']
    Sleep    1sec

      #click on the area button
   Click Element   xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[1]/mat-form-field/div/div[1]/div

   Click Element    //span[text()=" Counter Measure "]
   Sleep    2sec
   #remove the emplyee
   Click Element    xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[3]/ng-multiselect-dropdown/div/div[1]/span/span[1]/span/a
   Sleep     1sec
      #--------------emplyee column-
   Click Element    xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[3]/ng-multiselect-dropdown/div/div[1]/span
   #raman xpath
   Click Element    xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[3]/ng-multiselect-dropdown/div/div[2]/ul[2]/li[17]

   Sleep    2sec
      #----------ADD button --------------
   Click Element    //span[text()=" Add "]
   Sleep    2sec

                                   # Action Implementation Status #

      #click on the area button
   Click Element   xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[1]/mat-form-field/div/div[1]/div
   Click Element    //span[text()=" Action Implementation Status "]
   Sleep    2sec
                  #----------ADD button --------------
   Click Element    //span[text()=" Add "]
   Sleep    2sec

                                # Training & Awareness #

   #click on the area button
   Click Element   xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[1]/mat-form-field/div/div[1]/div
   Click Element    //span[text()=" Training & Awareness "]
   Sleep    2sec
                  #----------ADD button --------------
   Click Element    //span[text()=" Add "]
   Sleep    2sec


                          #-------------------------------------5D-------------------------------------#

                                             #Five D Standardixation#

         #click on the stage------
    Click Element      xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select
    Click Element     //span[text()=' 5 D ']
    Sleep    1sec

      #click on the area button
   Click Element   xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[1]/mat-form-field/div/div[1]/div

   Click Element    //span[text()=" Five D Standardization "]
   Sleep    2sec
   #remove the emplyee
   Click Element    xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[3]/ng-multiselect-dropdown/div/div[1]/span/span[1]/span/a
   Sleep     1sec
      #--------------emplyee column-
   Click Element    xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[3]/ng-multiselect-dropdown/div/div[1]/span
   #anil xpath
   Click Element    xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[3]/ng-multiselect-dropdown/div/div[2]/ul[2]/li[18]

   Sleep    2sec
      #----------ADD button --------------
   Click Element    //span[text()=" Add "]
   Sleep    2sec

                                    #---------------------------6D-----------------------------------#

                                                      #Six D Verifications#

         #click on the stage------
    Click Element      xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select
    Click Element     //span[text()=' 6 D ']
    Sleep    1sec

      #click on the area button
   Click Element   xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[1]/mat-form-field/div/div[1]/div

   Click Element    //span[text()=" Six D Verifications "]
   Sleep    2sec
   #remove the emplyee
   Click Element    xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[3]/ng-multiselect-dropdown/div/div[1]/span/span[1]/span/a
   Sleep     1sec
      #--------------emplyee column-
   Click Element    xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[3]/ng-multiselect-dropdown/div/div[1]/span
   #Rahul xpath
   Click Element    xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[3]/ng-multiselect-dropdown/div/div[2]/ul[2]/li[15]

   Sleep    2sec
      #----------ADD button --------------
   Click Element    //span[text()=" Add "]
   Sleep    2sec


                                                  #ADD MORE ACTION#
      #click on the stage------
    Click Element      xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select
    Click Element     //span[text()=' 4 D ']
    Sleep    1sec


      #click on the area button
   Click Element   xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[1]/mat-form-field/div/div[1]/div
   Click Element    //span[text()=" Action Implementation Status "]
   Sleep    2sec
                  #----------ADD button --------------
   Click Element    //span[text()=" Add "]
   Sleep    2sec


                                  #------------------------7D---------------------------#

                                                  #DEFECT MONITORING#
         #click on the stage------
    Click Element      xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select
    Click Element     //span[text()=' 7 D ']
    Sleep    1sec

      #click on the area button
   Click Element   xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[1]/mat-form-field/div/div[1]/div

   Click Element    //span[text()=" Defect Monitoring "]
   Sleep    2sec
   #remove the emplyee
   Click Element    xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[3]/ng-multiselect-dropdown/div/div[1]/span/span[1]/span/a
   Sleep     1sec
      #--------------emplyee column-
   Click Element    xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[3]/ng-multiselect-dropdown/div/div[1]/span
   #Neha xpath
   Click Element    xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[3]/ng-multiselect-dropdown/div/div[2]/ul[2]/li[19]

   Sleep    2sec
      #----------ADD button --------------
   Click Element    //span[text()=" Add "]
   Sleep    2sec

                           #Temporary/Containment Action  Monitoring#

     #click on the area button
   Click Element   xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[1]/mat-form-field/div/div[1]/div
   Click Element   xpath=/html/body/div[4]/div[2]/div/div/div/mat-option[2]
   Sleep    2sec
                  #----------ADD button --------------
   Click Element    //span[text()=" Add "]
   Sleep    2sec


                           #Countermeasure Actions Monitoring #

     #click on the area button
   Click Element   xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[1]/mat-form-field/div/div[1]/div
   Click Element     //span[text()=" Countermeasure Actions Monitoring "]
   Sleep    2sec
                  #----------ADD button --------------
   Click Element    //span[text()=" Add "]
   Sleep    2sec

                          #----------------------------8D---------------------------------#

                                              #Eight D closure component#
           #click on the stage------
    Click Element      xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select
    Click Element     //span[text()=' 8 D ']
    Sleep    1sec

      #click on the area button
   Click Element   xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[1]/mat-form-field/div/div[1]/div

   Click Element    //span[text()=" Eight D Closure Component "]
   Sleep    2sec
   #remove the emplyee
   Click Element    xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[3]/ng-multiselect-dropdown/div/div[1]/span/span[1]/span/a
   Sleep     1sec
      #--------------emplyee column-
   Click Element    xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[3]/ng-multiselect-dropdown/div/div[1]/span
   #Saniya xpath
   Click Element    xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[3]/ng-multiselect-dropdown/div/div[2]/ul[2]/li[20]

   Sleep    2sec
      #----------ADD button --------------
   Click Element    //span[text()=" Add "]
   Sleep    2s

                                       #Eight D Horizontal#

        #click on the area button
   Click Element   xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[1]/mat-form-field/div/div[1]/div

   Click Element    //span[text()=" Eight D Horiozontal "]
   
   Sleep    2s
   
     #Remove the 8D globally closure 
     
    Click Element    xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[2]/ng-multiselect-dropdown/div/div[1]/span/span[2]/span/a
    Sleep    2s

   Click Element    xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[3]/ng-multiselect-dropdown/div/div[1]/span

   #Arjun xpath
   Click Element    xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[3]/ng-multiselect-dropdown/div/div[2]/ul[2]/li[11]
   Sleep    1s
   #remove saniya
   Click Element    xpath=/html/body/app-root/div/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-concern-team-define/div/div[3]/mat-card/div[2]/div[3]/ng-multiselect-dropdown/div/div[1]/span/span[1]/span/a
   Sleep    1s
   #----------ADD button --------------
   Click Element    //span[text()=" Add "]
   Sleep    2s


















   

