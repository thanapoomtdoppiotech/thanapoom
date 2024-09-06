*** Settings ***
Resource        ../import.robot


*** Keywords ***
Input delivery info
    [Arguments]      ${name}    ${surname}    ${address}    ${phone}    ${email}
    delivery_page.Input_name           ${name}
    delivery_page.Input surname        ${surname}
    delivery_page.Input address        ${address}
    delivery_page.Input phone          ${phone}
    delivery_page.Input email          ${email}
