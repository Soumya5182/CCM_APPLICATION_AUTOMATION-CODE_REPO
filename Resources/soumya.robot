*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}  http://www.google.com
*** Test Cases ***
Navigate to a Web Page
    Open Browser    ${url}
    Sleep    2s
    Press Keys    //textarea[@name="q"]    soumyaranjan
*** Keywords ***