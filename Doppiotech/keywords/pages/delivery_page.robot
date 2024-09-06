*** Settings ***
Resource        ../import.robot


*** Keywords ***  
Input name
    [Arguments]            ${name}
    SeleniumLibrary.Wait Until Element Is Visible            ${delivery_locator.input_name}
    SeleniumLibrary.Input Text                               ${delivery_locator.input_name}             ${name}
Input surname
    [Arguments]            ${surname}
    SeleniumLibrary.Wait Until Element Is Visible            ${delivery_locator.input_surname}
    SeleniumLibrary.Input Text                               ${delivery_locator.input_surname}          ${surname} 
Input address  
    [Arguments]            ${address}
    SeleniumLibrary.Wait Until Element Is Visible            ${delivery_locator.input_address}
    SeleniumLibrary.Input Text                               ${delivery_locator.input_address}          ${address}  
Input phone
    [Arguments]            ${phone}
    SeleniumLibrary.Wait Until Element Is Visible            ${delivery_locator.input_phone}
    SeleniumLibrary.Input Text                               ${delivery_locator.input_phone}             ${phone} 
Input email         
    [Arguments]            ${email}
    SeleniumLibrary.Wait Until Element Is Visible            ${delivery_locator.input_email}
    SeleniumLibrary.Input Text                               ${delivery_locator.input_email}           ${email}