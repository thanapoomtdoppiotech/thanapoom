*** Settings ***
Resource        ../import.robot

*** Variables ***
${cart_locator.click_element}            xpath=//div[text()='Doppee phone']
${cart_locator.click_add}               xpath=//span[text()='Add to cart']//parent::button