*** Settings ***
Resource        ../import.robot


*** Keywords ***
*** Keywords ***
Check your order
    [Arguments]    ${order_id}
    SeleniumLibrary.Wait Until Element Is Visible       ${header_locator.click_icon}
    SeleniumLibrary.Click Element       	            ${header_locator.click_icon}
    SeleniumLibrary.Wait Until Element Is Visible       ${checkorder_locator.click_preparing}
    SeleniumLibrary.Click Element                       ${checkorder_locator.click_preparing}
    
    SeleniumLibrary.Scroll Element Into View              xpath=//td[text()='${order_id}']
    SeleniumLibrary.Wait Until Element Is Visible         xpath=//td[text()='${order_id}']      
    SeleniumLibrary.Click Element                         xpath=//td[text()='${order_id}']  