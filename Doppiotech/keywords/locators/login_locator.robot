*** Settings ***
Resource        ../import.robot

*** Variables ***
${login_locator.input_username}         xpath=//span[input[@type='text']]//input
${login_locator.input_password}         xpath=//span[input[@type='password']]//input
${login_locator.click_login}            xpath=//button[@type='submit']
