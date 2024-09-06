*** Settings ***
Resource        ../import.robot

*** Variables ***
${delivery_locator.input_name}            xpath=//*[@id='form_item_name']
${delivery_locator.input_surname}         xpath=//*[@id='form_item_surName']
${delivery_locator.input_address}         xpath=//*[@id='form_item_address']
${delivery_locator.input_phone}           xpath=//*[@id='form_item_phone']
${delivery_locator.input_email}           xpath=//*[@id='form_item_email']