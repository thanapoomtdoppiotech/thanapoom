*** Settings ***
Resource       ./import.robot

*** Keywords ***
Open Doppee web
    SeleniumLibrary.Open Browser        ${url}     gc
    SeleniumLibrary.Maximize BrowserWindow
Clear all browser   
    SeleniumLibrary.Close All Browsers

Click pop up
    SeleniumLibrary.Wait Until Element Is Visible        ${common.click_popup}
    SeleniumLibrary.Click Button                         ${common.click_popup}

Click header person icon
    SeleniumLibrary.Click Element       	            ${header_locator.click_icon}

Click header cart icon
    SeleniumLibrary.Click Element                       ${header_locator.cart_icon} 
     
*** Variables ***
${common.click_popup}                   xpath=//*[@class='css-eq3tly ant-btn ant-btn-primary']
${header_locator.click_icon}            xpath=//span[@aria-label='user']
${header_locator.cart_icon}             xpath=//span[@aria-label='shopping-cart']
${payment_locator.text_payment_success_details}            xpath=//div[@class='success-description']
