*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${company}      MSWIL Bidadi - MSWIL Bidadi    MSWIL Kumbalgodu - MSWIL Kumbalgodu    MSWIL Sanand - MSWIL Sanand    MSWIL Pathredi - MSWIL Pathredi    MSWIL Haldwani - MSWIL Haldwani     MSWIL Sec85 B - MSWIL Sec85 B   MSWIL Kuruvenmedu - MSWIL Kuruvenmedu    MSWIL Gurugram - MSWIL Gurugram
${BROWSER}      Chrome
${URL}      http://172.29.58.29:1012/auth/login
${USERNAME}     s06036abhijeet
${PASSWORD}     Mind@1234
${UserPath}     //input[@id='mat-input-0']
${PWDPath}      //input[@id='mat-input-1']
${LoginButton}      //span[text()='Login']

*** Test Cases ***
Login and Export Data
    Set Selenium Speed    2s
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text      ${UserPath}    ${USERNAME}
    Input Text      ${PWDPath}     ${PASSWORD}
    Click Element    ${LoginButton}
    mouse over    xpath://span[text()='Reports']
    Click Element    xpath://span[text()='Reports']
    Click Element    xpath://span[text()='Final PQHC']
    Sleep    1s
    Click Element    //span[contains(text(),'2024 - 2025')]/parent::span
#    Sleep    1s
    Click Element    //span[contains(text(),'2023 - 2024')]
    @{Units}       Create List      MSWIL Bidadi - MSWIL Bidadi    MSWIL Kumbalgodu - MSWIL Kumbalgodu    MSWIL Sanand - MSWIL Sanand    MSWIL Pathredi - MSWIL Pathredi    MSWIL Haldwani - MSWIL Haldwani

    FOR    ${UnitD}    IN    @{Units}
        # Interact with elements (e.g., select from dropdowns)
        Click Element    xpath=//body/app-root[1]/app-admin-layout[1]/div[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/div[1]/app-final-report[1]/block-ui[1]/mat-card[1]/div[1]/div[3]/mat-form-field[1]/div[1]/div[1]/div[1]
        Sleep    2s
        Log    ${UnitD}
        Click Element    xpath=//mat-option[@role="option"]/span[contains(text(),'${UnitD}')]
        Sleep    3s
        Click Element    xpath://span[text()=' Apply ']
        Sleep    2S
        ${elem}=    Set Variable    //span[contains(text(),'Export to PDF')]/parent::button
        ${count}=    Get Element Count    ${elem}
        Sleep    1s
        IF    ${count} > 0  Click Element    //span[contains(text(),'Export to PDF')]/parent::button
        Sleep    3s
    END

    Close Browser
*** Keywords ***