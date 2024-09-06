*** Settings ***
Resource        ../import.robot


*** Keywords ***
input product
    [Arguments]        ${product}
    SeleniumLibrary.Wait Until Element Is Visible    ${search_locator.input_text} 
    SeleniumLibrary.Input Text                       ${search_locator.input_text}           ${product}

Click search button
    SeleniumLibrary.Wait Until Element Is Visible    ${search_locator.click_search}
    SeleniumLibrary.Click Button                     ${search_locator.click_search}