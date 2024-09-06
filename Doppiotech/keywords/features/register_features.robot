*** Settings ***
Resource        ../import.robot


*** Keywords ***
Register success
    [Arguments]         ${emailregis}    ${passwordregis}    ${confirmpass} 
    register_page.click sign up
    register_page.Input text email                           ${emailregis}
    register_page.Input text password                        ${passwordregis}
    register_page.Input text confirm password                ${confirmpass} 
    register_page.click confirm sign up