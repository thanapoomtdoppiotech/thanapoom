*** Settings ***
Resource        ../import.robot


*** Keywords ***
add product to cart    
    cart_page.Click product name
    cart_page.Click add product
    common.Click pop up