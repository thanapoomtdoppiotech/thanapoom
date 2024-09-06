*** Settings ***
Resource        ../import.robot


*** Keywords ***
user login success
    [Arguments]    ${username}        ${password}    
    login_page.Input username to login    ${username}
    login_page.Input password to login    ${password}
    login_page.Click to login
    common.Click pop up