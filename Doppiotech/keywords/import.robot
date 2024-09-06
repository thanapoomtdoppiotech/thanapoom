*** Settings ***
Library     SeleniumLibrary
Library    String



Variables   ../resources/testdata/testdata.yaml
Variables   ../resources/setting/setting.yaml

Resource    common.robot

Resource    ./pages/login_page.robot
Resource    ./pages/search_page.robot
Resource    ./pages/cart_page.robot
Resource    ./pages/delivery_page.robot
Resource    ./pages/payment_page.robot
Resource    ./pages/register_page.robot
Resource    ./pages/checkorder_page.robot


Resource    ./locators/login_locator.robot
Resource    ./locators/search_locator.robot
Resource    ./locators/cart_locator.robot
Resource    ./locators/delivery_locator.robot
Resource    ./locators/payment_locator.robot
Resource    ./locators/register_locator.robot
Resource    ./locators/checkorder_locator.robot


Resource    ./features/login_features.robot
Resource    ./features/search_features.robot
Resource    ./features/login_features.robot
Resource    ./features/cart_features.robot
Resource    ./features/delivery_features.robot
Resource    ./features/payment_features.robot
Resource    ./features/register_features.robot



