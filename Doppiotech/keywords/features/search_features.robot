*** Settings ***
Resource        ../import.robot


*** Keywords ***
Search product
    [Arguments]        ${product}
    search_page.input product    ${product}
    search_page.Click search button   
    