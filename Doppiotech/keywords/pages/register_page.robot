*** Settings ***
Resource        ../import.robot


*** Keywords ***
Click sign up
    
    SeleniumLibrary.Wait Until Element Is Visible            ${register_locator.click_signup}
    SeleniumLibrary.Click Button                             ${register_locator.click_signup}            
Input text email
    [Arguments]            ${emailregis}
    SeleniumLibrary.Wait Until Element Is Visible            ${register_locator.input_email}
    SeleniumLibrary.Input Text                               ${register_locator.input_email}              ${emailregis}
Input text password
    [Arguments]            ${passwordregis}
    SeleniumLibrary.Wait Until Element Is Visible            ${register_locator.input_pass}
    SeleniumLibrary.Input Text                               ${register_locator.input_pass}               ${passwordregis} 
Input text confirm password   
    [Arguments]            ${confirmpass} 
    SeleniumLibrary.Wait Until Element Is Visible            ${register_locator.input_conpass}
    SeleniumLibrary.Input Text                               ${register_locator.input_conpass}            ${confirmpass}
click confirm sign up
    SeleniumLibrary.Wait Until Element Is Visible           ${register_locator.click_consignup} 
    SeleniumLibrary.Click Button                            ${register_locator.click_consignup} 
    SeleniumLibrary.Wait Until Element Is Visible           ${common.click_popup}
    SeleniumLibrary.Click Button                            ${common.click_popup}