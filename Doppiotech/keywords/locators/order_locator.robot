*** Settings ***
Resource        ../import.robot

*** Variables ***
${checkorder_locator.click_preparing}            xpath=//div[text()='Preparing']
${checkorder_locator.click_order}                xpath=//div[text()='My Order']/ancestor::div[contains(@class,'ant-card-contain-tabs')]//tbody[@class='ant-table-tbody']/tr[1]/td[1]