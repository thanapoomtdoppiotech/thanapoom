*** Settings ***
Resource      ../keywords/import.robot
Test Teardown       Clear all Browser

*** Test Cases ***
tc01-testlocator
    ${register_user}=    common.Generate Random Email

    Set Selenium Speed    0.1
    common.Open Doppee web
    common.Click header person icon 
    register_features.Register success           ${register_user}    ${register.password}    ${register.confirm_password}
    #login_features.user login success            ${login.username}    ${login.password} 
    search_features.Search product               ${product.product_name}
    cart_features.add product to cart
    common.Click header cart icon
    delivery_features.Input delivery info        ${delivery_info.name}    ${delivery_info.surname}    ${delivery_info.address}    ${delivery_info.phone}    ${delivery_info.email}
    Payment_features.Input payment detail and confirm payment           ${payment_detail.card_number}    ${payment_detail.expiration_date}    ${payment_detail.cv_code}    ${payment_detail.card_owner}
    order_page.Check your order 
          
       