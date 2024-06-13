#Created by:-Soumyaranjan routray
#date:-4-nov-23(Saturday)
***Settings***
Library    SeleniumLibrary
Library    XML
***Test Cases***
#crated the health card download
#create the All unit health card report for the september month

Navigate to a Web Page
    #Open Browser    https://pqhc.mss.motherson.com/auth/login     chrome
    #maximize browser window
    Open Browser    http://172.29.58.29:1012/auth/login  chrome

    maximize browser window
    Sleep    3s
#------------Log in to the screen-----------------w-full mat-raised-button mat-button-base mat-primary
   input text      //input[@placeholder='Username']    s06036abhijeet                   #mtslpqhc
   input text     //input[@placeholder='Password']     Mind@1234                 #Mind@1234

   Sleep    1s
   #click button    //button[contains(text(), 'Login') ]
   Click Button    //*[@class="w-full mat-raised-button mat-button-base mat-primary"]
    Sleep    3

    #reports
   Click Element    //mat-icon[text()='reorder']
   Sleep    2s
   Click Element    //span[text()='Final PQHC']
   Sleep    2s

   #SELECT THE MONTH
   Click Element    xpath=/html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-final-report/block-ui/mat-card/div/div[4]/mat-form-field/div/div[1]/div/mat-select/div/div[2]

   Click Element   //span[text()=' September ']

   #click apply button
   Click Element     //span[text()='Apply']
   sleep  5s
   #click on the sinle screen
   Click Element    //span[text()=' Single Screen ']
   Sleep    4s
   #expant the elemnt
   #Click Element    //mat-icon[text()='menu']
   Sleep    2s
   #clck on the export to pdf button
   Click Element    //span[text()=' Export to PDF']
   sleep    5s

   #click on the unit drop down
   Click Element    xpath=/html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-final-report/block-ui/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select/div/div[2]

   #MSWIL Kumbalgodu - MSWIL Kumbalgodu#
   Click Element    //span[text()=' MSWIL Kumbalgodu - MSWIL Kumbalgodu ']

   Sleep    1s

   #click apply button
   Click Element     //span[text()='Apply']
   sleep  5s

   #click on the sinle screen
   Click Element    //span[text()=' Single Screen ']
   Sleep    3s

   #clck on the export to pdf button
   Click Element    //span[text()=' Export to PDF']
   sleep    10s
   #MSWIL Sanand - MSWIL Sanand

   #click on the unit drop down
   Click Element    xpath=/html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-final-report/block-ui/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select/div/div[2]
   Sleep    2s
   Click Element    //span[text()=' MSWIL Sanand - MSWIL Sanand ']
   Sleep    1s
    #click apply button
   Click Element     //span[text()='Apply']
   Sleep    1s

    #SAMIL Sanand II - SAMIL Sanand II
    #clcik unit drop down
    Click Element    xpath=/html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-final-report/block-ui/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select/div/div[2]
    Sleep    2s
    Click Element    //span[text()=' SAMIL Sanand II - SAMIL Sanand II ']
    Sleep    2s
    #click apply button
    Click Element     //span[text()='Apply']
    Sleep    3s
    #click on the sinle screen
   Click Element    //span[text()=' Single Screen ']
   Sleep    2s
   #export to excel
   Click Element    //span[text()=' Export to PDF']
   sleep    3s

   #MSWIL Pathredi - MSWIL Pathredi

    #clcik unit drop down
    Click Element    xpath=/html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-final-report/block-ui/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select/div/div[2]
    Sleep    2s
    Click Element    //span[text()=' MSWIL Pathredi - MSWIL Pathredi ']
    Sleep    2s
    #click apply button
    Click Element     //span[text()='Apply']
    Sleep    3s
    #click on the sinle screen
   Click Element    //span[text()=' Single Screen ']
   Sleep    2s
   #export to excel
   Click Element    //span[text()=' Export to PDF']
   sleep    3s

   #MSWIL Haldwani - MSWIL Haldwani

    Click Element    xpath=/html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-final-report/block-ui/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select/div/div[2]
    Sleep    2s
    Click Element    //span[text()=' MSWIL Haldwani - MSWIL Haldwani ']
    Sleep    2s
    #click apply button
    Click Element     //span[text()='Apply']
    Sleep    3s
    #click on the sinle screen
   Click Element    //span[text()=' Single Screen ']
   Sleep    2s
   #export to excel
   Click Element    //span[text()=' Export to PDF']
   sleep    3s

   #SAMIL Mexico - SAMIL Mexico
    #unit drop down
    Click Element    xpath=/html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-final-report/block-ui/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select/div/div[2]
    Sleep    2s
    Click Element    //span[text()=' SAMIL Mexico - SAMIL Mexico ']
    Sleep    2s
    #click apply button
    Click Element     //span[text()='Apply']
    Sleep    3s
    #click on the sinle screen
   Click Element    //span[text()=' Single Screen ']
   Sleep    2s
   #export to excel
   Click Element    //span[text()=' Export to PDF']
   sleep    3s
   #MSWIL Sec85 B - MSWIL Sec85 B
   #unit drop down
    Click Element    xpath=/html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-final-report/block-ui/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select/div/div[2]
    Sleep    2s
    Click Element    //span[text()=' MSWIL Sec85 B - MSWIL Sec85 B ']
    Sleep    2s
    #click apply button
    Click Element     //span[text()='Apply']
    Sleep    3s
    #click on the sinle screen
   Click Element    //span[text()=' Single Screen ']
   Sleep    2s
   #export to excel
   Click Element    //span[text()=' Export to PDF']
   sleep    3s

   #MSWIL Kuruvenmedu - MSWIL Kuruvenmedu
    #unit drop down
    Click Element    xpath=/html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-final-report/block-ui/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select/div/div[2]
    Sleep    2s
    Click Element    //span[text()=' MSWIL Kuruvenmedu - MSWIL Kuruvenmedu ']
    Sleep    2s
      #click apply button
    Click Element     //span[text()='Apply']
    Sleep    2s
    #MSWIL Gurugram - MSWIL Gurugram
    #unit drop down
    Click Element    xpath=/html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-final-report/block-ui/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select/div/div[2]
    Sleep    2s
    Click Element    //span[text()=' MSWIL Gurugram - MSWIL Gurugram ']
    Sleep    2s
      #click apply button
    Click Element     //span[text()='Apply']
    Sleep    2s

    #MSWIL Sec85 A - MSWIL Sec85 A
    #unit drop down
    Click Element    xpath=/html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-final-report/block-ui/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select/div/div[2]
    Sleep    2s
    Click Element    //span[text()=' MSWIL Sec85 A - MSWIL Sec85 A ']
    Sleep    2s
      #click apply button
    Click Element     //span[text()='Apply']
    Sleep    2s
    #MSWIL Marunji - MSWIL Marunji
    #unit drop down
    Click Element    xpath=/html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-final-report/block-ui/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select/div/div[2]
    Sleep    2s
    Click Element    //span[text()=' MSWIL Marunji - MSWIL Marunji ']
    Sleep    2s
      #click apply button
    Click Element     //span[text()='Apply']
    Sleep    2s
    #MSWIL Hinjewadi - MSWIL Hinjewadi
    #unit drop down
    Click Element    xpath=/html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-final-report/block-ui/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select/div/div[2]
    Sleep    2s
    Click Element    //span[text()=' MSWIL Hinjewadi - MSWIL Hinjewadi ']
    Sleep    2s
      #click apply button
    Click Element     //span[text()='Apply']
    Sleep    2s
    #MSWIL RNSP - MSWIL RNSP
       #unit drop down
    Click Element    xpath=/html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-final-report/block-ui/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select/div/div[2]
    Sleep    2s
    Click Element    //span[text()=' MSWIL RNSP - MSWIL RNSP ']
    Sleep    2s
    #click apply button
    Click Element     //span[text()='Apply']
    Sleep    3s
    #click on the sinle screen
   Click Element    //span[text()=' Single Screen ']
   Sleep    2s
   #export to excel
   Click Element    //span[text()=' Export to PDF']
   sleep    3s
   #MSWIL Lucknow - MSWIL Lucknow
    #unit drop down
    Click Element    xpath=/html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-final-report/block-ui/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select/div/div[2]
    Sleep    2s
    Click Element    //span[text()=' MSWIL Lucknow - MSWIL Lucknow ']
    Sleep    2s
    #click apply button
    Click Element     //span[text()='Apply']
    Sleep    3s
    #click on the sinle screen
   Click Element    //span[text()=' Single Screen ']
   Sleep    2s
   #export to excel
   Click Element    //span[text()=' Export to PDF']
   sleep    3s
   #MSWIL Walajabad - MSWIL Walajabad
    #unit drop down
    Click Element    xpath=/html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-final-report/block-ui/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select/div/div[2]
    Sleep    2s
    Click Element    //span[text()=' MSWIL Walajabad - MSWIL Walajabad ']
    Sleep    2s
      #click apply button
    Click Element     //span[text()='Apply']
    Sleep    2s
  #SAMIL 84 EOU A - SAMIL 84 EOU A
      #unit drop down
    Click Element    xpath=/html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-final-report/block-ui/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select/div/div[2]
    Sleep    2s
    Click Element    //span[text()=' SAMIL 84 EOU A - SAMIL 84 EOU A ']
    Sleep    2s
    #click apply button
    Click Element     //span[text()='Apply']
    Sleep    3s
    #click on the sinle screen
   Click Element    //span[text()=' Single Screen ']
   Sleep    2s
   #export to excel
   Click Element    //span[text()=' Export to PDF']
   sleep    3s
   #MSWIL C 6&7 - MSWIL C 6&7
    #unit drop down
    Click Element    xpath=/html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-final-report/block-ui/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select/div/div[2]
    Sleep    2s
    Click Element    //span[text()=' MSWIL C 6&7 - MSWIL C 6&7 ']
    Sleep    2s
    #click apply button
    Click Element     //span[text()='Apply']
    Sleep    3s
    #click on the sinle screen
   Click Element    //span[text()=' Single Screen ']
   Sleep    2s
   #export to excel
   Click Element    //span[text()=' Export to PDF']
   sleep    3s

   #MSWIL Faridabad - MSWIL Faridabad
    #unit drop down
    Click Element    xpath=/html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-final-report/block-ui/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select/div/div[2]
    Sleep    2s
    Click Element    //span[text()=' MSWIL Faridabad - MSWIL Faridabad ']
    Sleep    2s
      #click apply button
    Click Element     //span[text()='Apply']
    Sleep    2s
    #SAMIL Thailand - SAMIL Thailand
      #unit drop down
    Click Element    xpath=/html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-final-report/block-ui/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select/div/div[2]
    Sleep    2s
    Click Element    //span[text()=' SAMIL Thailand - SAMIL Thailand ']
    Sleep    2s
      #click apply button
    Click Element     //span[text()='Apply']
    Sleep    2s

    #MSWIL Pithampur I - MSWIL Pithampur I
    #unit drop down
    Click Element    xpath=/html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-final-report/block-ui/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select/div/div[2]
    Sleep    2s
    Click Element    //span[text()=' MSWIL Pithampur I - MSWIL Pithampur I ']
    Sleep    2s
    #click apply button
    Click Element     //span[text()='Apply']
    Sleep    3s
    #click on the sinle screen
   Click Element    //span[text()=' Single Screen ']
   Sleep    2s
   #export to excel
   Click Element    //span[text()=' Export to PDF']
   sleep    3s
   #MSWIL C14 A - MSWIL C14 A

    #unit drop down
    Click Element    xpath=/html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-final-report/block-ui/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select/div/div[2]
    Sleep    2s
    Click Element    //span[text()=' MSWIL C14 A - MSWIL C14 A ']
    Sleep    2s
    #click apply button
    Click Element     //span[text()='Apply']
    Sleep    3s
    #click on the sinle screen
   Click Element    //span[text()=' Single Screen ']
   Sleep    2s
   #export to excel
   Click Element    //span[text()=' Export to PDF']
   sleep    3s
   #MSWIL Sec 64 - MSWIL Sec 64
    #unit drop down
    Click Element    xpath=/html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-final-report/block-ui/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select/div/div[2]
    Sleep    2s
    Click Element    //span[text()=' MSWIL Sec 64 - MSWIL Sec 64 ']
    Sleep    2s
    #click apply button
    Click Element     //span[text()='Apply']
    Sleep    3s
    #click on the sinle screen
   Click Element    //span[text()=' Single Screen ']
   Sleep    2s
   #export to excel
   Click Element    //span[text()=' Export to PDF']
   sleep    3s

   #SAMIL Kandla - SAMIL Kandla
       #unit drop down
    Click Element    xpath=/html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-final-report/block-ui/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select/div/div[2]
    Sleep    2s
    Click Element    //span[text()=' SAMIL Kandla - SAMIL Kandla ']
    Sleep    2s
    #click apply button
    Click Element     //span[text()='Apply']
    Sleep    3s
    #click on the sinle screen
   Click Element    //span[text()=' Single Screen ']
   Sleep    2s
   #export to excel
   Click Element    //span[text()=' Export to PDF']
   sleep    3s

   #MSWIL A15 - MSWIL A15
    #unit drop down
    Click Element    xpath=/html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-final-report/block-ui/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select/div/div[2]
    Sleep    2s
    Click Element    //span[text()=' MSWIL A15 - MSWIL A15 ']
    Sleep    2s
      #click apply button
    Click Element     //span[text()='Apply']
    Sleep    2s

    #MSWIL Pithampur II - MSWIL Pithampur II
    #unit drop down
    Click Element    xpath=/html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-final-report/block-ui/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select/div/div[2]
    Sleep    2s
    Click Element    //span[text()=' MSWIL Pithampur II - MSWIL Pithampur II ']
    Sleep    2s
    #click apply button
    Click Element     //span[text()='Apply']
    Sleep    3s
    #click on the sinle screen
   Click Element    //span[text()=' Single Screen ']
   Sleep    2s
   #export to excel
   Click Element    //span[text()=' Export to PDF']
   sleep    3s

   #MSWIL 84 DTA - MSWIL 84 DTA

   #unit drop down
    Click Element    xpath=/html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-final-report/block-ui/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select/div/div[2]
    Sleep    2s
    Click Element    //span[text()=' MSWIL 84 DTA - MSWIL 84 DTA ']
    Sleep    2s
    #click apply button
    Click Element     //span[text()='Apply']
    Sleep    3s
    #click on the sinle screen
   Click Element    //span[text()=' Single Screen ']
   Sleep    2s
   #export to excel
   Click Element    //span[text()=' Export to PDF']
   sleep    3s

   #SAMIL Sharjah ME - SAMIL Sharjah ME

    #unit drop down
    Click Element    xpath=/html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-final-report/block-ui/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select/div/div[2]
    Sleep    2s
    Click Element    //span[text()=' SAMIL Sharjah ME - SAMIL Sharjah ME ']
    Sleep    2s
    #click apply button
    Click Element     //span[text()='Apply']
    Sleep    3s
    #click on the sinle screen
   Click Element    //span[text()=' Single Screen ']
   Sleep    2s
   #export to excel
   Click Element    //span[text()=' Export to PDF']
   sleep    3s

   #SAMIL Sharjah M1A - SAMIL Sharjah M1A
    #unit drop down
    Click Element    xpath=/html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-final-report/block-ui/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select/div/div[2]
    Sleep    2s
    Click Element    //span[text()=' SAMIL Sharjah M1A - SAMIL Sharjah M1A ']
    Sleep    2s
    #click apply button
    Click Element     //span[text()='Apply']
    Sleep    3s
    #click on the sinle screen
   Click Element    //span[text()=' Single Screen ']
   Sleep    2s
   #export to excel
   Click Element    //span[text()=' Export to PDF']
   sleep    3s
   #MSWIL Kattavakkam - MSWIL Kattavakkam
    #unit drop down
    Click Element    xpath=/html/body/app-root/app-admin-layout/div/mat-sidenav-container/mat-sidenav-content/div/app-final-report/block-ui/mat-card/div[1]/div[3]/mat-form-field/div/div[1]/div/mat-select/div/div[2]
    Sleep    2s
    Click Element    //span[text()=' MSWIL Kattavakkam - MSWIL Kattavakkam ']
    Sleep    2s
      #click apply button
    Click Element     //span[text()='Apply']
    Sleep    2s





