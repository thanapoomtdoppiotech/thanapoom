*** Settings ***
Resource        ../import.robot

*** Variables ***
${payment_locator.click_pay}               xpath=//span[text()='PAY']//parent::button
${payment_locator.click_selectmetod}       xpath=//span[text()='Next']//parent::button

${payment_locator.input_cardnum}           xpath=//*[@id='basic_bin']
${payment_locator.input_exp}               xpath=//*[@id='basic_exp']
${payment_locator.input_cvc}               xpath=//*[@id='basic_cvc']
${payment_locator.input_owner}             xpath=//*[@id='basic_owner']

${payment_locator.click_confirm}           xpath=//span[text()='Confirm Payment']//parent::button
${payment_locator.click_backhome}          xpath=//span[text()='Continue Shopping']//parent::button
