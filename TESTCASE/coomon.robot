*** Settings ***
Library     SeleniumLibrary
*** Variables ***

*** Test Cases ***

*** Keywords ***
this is used for the login and the password

    input text  //input[@placeholder='Username *']  Venkat_01
    Input Text  //input[@placeholder='Password *']  12345678
    Sleep    5s
    Click Element    //button[contains(text(), 'Login') ]