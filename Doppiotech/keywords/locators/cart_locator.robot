*** Settings ***
Resource        ../import.robot

*** Variables ***
${cart_locator.click_element}            xpath=//div[@class='ant-card-meta-title' and contains(., 'Doppee')]
${cart_locator.click_add}               xpath=//span[text()='Add to cart']//parent::button