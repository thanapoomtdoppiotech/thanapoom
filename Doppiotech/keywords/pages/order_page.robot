*** Settings ***
Resource        ../import.robot


*** Keywords ***
Check your order
    SeleniumLibrary.Wait Until Element Is Visible       ${header_locator.click_icon}
    SeleniumLibrary.Click Element       	            ${header_locator.click_icon}
    SeleniumLibrary.Wait Until Element Is Visible       ${checkorder_locator.click_order}
    SeleniumLibrary.Click Element                       ${checkorder_locator.click_order}
