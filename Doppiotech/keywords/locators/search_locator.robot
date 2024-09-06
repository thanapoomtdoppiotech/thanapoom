*** Settings ***
Resource        ../import.robot

*** Variables ***
${search_locator.input_text}        xpath=//*[@placeholder='input search text']        
${search_locator.click_search}     xpath=//span[@aria-label='search']//parent::button
#${search_locator.click_search}      xpath=//button[contains(@class,'ant-input-search-button')]
