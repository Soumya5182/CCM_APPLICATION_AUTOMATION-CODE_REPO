*** Settings ***
Library     SeleniumLibrary

*** Variables ***

*** Keywords ***
start the browser
    Open Browser    http://172.29.58.29:2023/auth/login     chrome
    maximize browser window
    Sleep    5s
this is used for the login and the password
    input text  //input[@placeholder='Username *']  Venkat_01
    Input Text  //input[@placeholder='Password *']  12345678
    Sleep    5s
    Click Element    //button[contains(text(), 'Login') ]


