*** Settings ***
Resource        ../import.robot


*** Keywords ***
Click product name 
    SeleniumLibrary.Wait Until Element Is Visible        ${cart_locator.click_element}
    SeleniumLibrary.Click Element                        ${cart_locator.click_element}
Click add product
    SeleniumLibrary.Wait Until Element Is Visible        ${cart_locator.click_add}
    SeleniumLibrary.Click Button                         ${cart_locator.click_add}

