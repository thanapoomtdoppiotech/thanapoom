*** Settings ***
Resource        ../import.robot

*** Variables ***
${register_locator.click_signup}               xpath=//span[text()='Sign up']//parent::button

${register_locator.input_email}                xpath=//span[input[@id='basic_username']]
${register_locator.input_pass}                 xpath=//span[input[@id='basic_password']]
${register_locator.input_conpass}              xpath=//span[input[@id='basic_confirmPassword']]

${register_locator.click_consignup}            xpath=//span[text()='SIGNUP']//parent::button