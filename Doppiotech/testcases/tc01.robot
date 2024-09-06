*** Settings ***
Resource      ../keywords/import.robot
Test Teardown       Clear all Browser

*** Test Cases ***
tc01-testlocator
    Set Selenium Speed    0.1
    common.Open Doppee web
    common.Click header person icon 
    #register_features.Register success           ${email.email_input}    ${passregis.passregis_input}    ${conpass.confirm_input}
    login_features.user login success            ${user.username_input}    ${password.password_input} 
    search_features.Search product               ${pd_n.product_name}
    cart_features.add product to cart
    common.Click header cart icon
    delivery_features.Input delivery info        ${name.name_input}    ${surname.surname_input}    ${address.address_input}    ${phone.phone_input}    ${mail.mail_input}
    Payment_features.Payment Complete            ${cardnumber.card_input}    ${exp.exp_input}    ${cvc.cvc_input}    ${owner.owner_input}
    ${order_id}    payment_page.Get order id
    log to console    ${order_id}
    checkorder_page.Check your order    ${order_id}
          
       