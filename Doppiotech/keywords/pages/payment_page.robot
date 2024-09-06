*** Settings ***
Resource        ../import.robot


*** Keywords ***  
Go to payment 
    SeleniumLibrary.Wait Until Element Is Visible            ${payment_locator.click_pay} 
    SeleniumLibrary.Click Button                             ${payment_locator.click_pay} 
    SeleniumLibrary.Wait Until Element Is Visible            ${payment_locator.click_selectmetod}
    SeleniumLibrary.Click Button                             ${payment_locator.click_selectmetod}
Input cardnumber
    [Arguments]      ${cardnumber}            
    SeleniumLibrary.Wait Until Element Is Visible            ${payment_locator.input_cardnum}
    SeleniumLibrary.Input Text                               ${payment_locator.input_cardnum}         ${cardnumber}   
Input expiration date
    [Arguments]      ${exp}
    SeleniumLibrary.Wait Until Element Is Visible            ${payment_locator.input_exp}
    SeleniumLibrary.Input Text                               ${payment_locator.input_exp}             ${exp}
Input cv code
    [Arguments]     ${cvc}
    SeleniumLibrary.Wait Until Element Is Visible            ${payment_locator.input_cvc}   
    SeleniumLibrary.Input Text                               ${payment_locator.input_cvc}             ${cvc}
Input card owner
    [Arguments]     ${cardowner}
    SeleniumLibrary.Wait Until Element Is Visible            ${payment_locator.input_owner}
    SeleniumLibrary.Input Text                               ${payment_locator.input_owner}           ${cardowner}
Confirm and back home page
    SeleniumLibrary.Wait Until Element Is Visible            ${payment_locator.click_confirm}     
    SeleniumLibrary.Click Button                             ${payment_locator.click_confirm}     
    SeleniumLibrary.Wait Until Element Is Visible            ${common.click_popup}
    SeleniumLibrary.Click Button                             ${common.click_popup}
    # SeleniumLibrary.Wait Until Element Is Visible            ${payment_locator.click_backhome}
    # SeleniumLibrary.Click Element                            ${payment_locator.click_backhome}
Get order id
    Get order id
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_locator.text_payment_success_details}
    ${detail}    SeleniumLibrary.Get Text    ${payment_locator.text_payment_success_details}
    ${id_line}    String.Get Line    ${detail}    0
    ${id}    String.Get Substring    ${id_line}    -4
        [Return]    ${id}