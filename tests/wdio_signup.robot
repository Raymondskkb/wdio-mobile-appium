*** Settings ***
Library                 AppiumLibrary
Resource                ../keywords/common/test_setup2.robot
Resource                ../keywords/wdio-app/home_screen.robot
Resource                ../keywords/wdio-app/signup_screen.robot
Test Setup              Launch App
Test Teardown           Close App


*** Variables ***

*** Keywords ***

*** Test Cases ***
Verify successful Signup to Webdriver IO App
    Given User lands on home page
    Then User is able to successfully SignUp