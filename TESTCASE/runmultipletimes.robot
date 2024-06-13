*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
Resource    ../CCMTESTCASE/init1D.robot

*** Test Cases ***
THIS TEST CASE 
    FOR    ${index}    IN RANGE   10:
        1D concern geneartion
    END