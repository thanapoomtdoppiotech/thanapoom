*** Settings ***
Resource        ../import.robot


*** Keywords ***
Input payment detail and confirm payment
    [Arguments]    ${cardnumber}    ${exp}    ${cvc}    ${cardowner}
    payment_page.Go to payment
    payment_page.Input cardnumber                ${cardnumber}
    payment_page.Input expiration date           ${exp}
    payment_page.Input cv code                   ${cvc}
    payment_page.Input card owner                ${cardowner}
    payment_page.Confirm and back home page