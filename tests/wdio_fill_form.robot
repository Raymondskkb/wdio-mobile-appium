*** Settings ***
Library                 AppiumLibrary
Resource                ../keywords/common/test_setup2.robot
Resource                ../keywords/wdio-app/forms_screen.robot
Resource                ../keywords/wdio-app/home_screen.robot
Test Setup              Launch App
Test Teardown           Close App


*** Variables ***


*** Keywords ***

*** Test Cases ***
Verify successful fill of Webdriver IO App form components
    Given User lands on home page
    Then User is able to fill form components