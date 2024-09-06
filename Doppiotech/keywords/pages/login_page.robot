*** Settings ***
Resource        ../import.robot


*** Keywords ***
Input username to login
    [Arguments]        ${username}
    SeleniumLibrary.Wait Until Element Is Visible   ${login_locator.input_username}
    SeleniumLibrary.Input Text                      ${login_locator.input_username}       ${username}

Input password to login
    [Arguments]        ${password}
    SeleniumLibrary.Wait Until Element Is Visible   ${login_locator.input_password}
    SeleniumLibrary.Input Text                      ${login_locator.input_password}       ${password}

Click to login
    SeleniumLibrary.Wait Until Element Is Visible   ${login_locator.click_login}
    SeleniumLibrary.Click Button                    ${login_locator.click_login}

Click to popup
    SeleniumLibrary.Wait Until Element Is Visible   ${common.click_popup}
    SeleniumLibrary.Click Button                    ${common.click_popup}
    