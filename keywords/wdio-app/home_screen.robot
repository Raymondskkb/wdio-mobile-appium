*** Settings ***
Library        AppiumLibrary

*** Variables ***
${homeButton}             xpath=//android.view.View[@content-desc="Home"]
${webViewButton}          xpath=//android.view.View[@content-desc="Webview"]
${loginSectionButton}     xpath=//android.view.View[@content-desc="Login"]
${formsButton}            xpath=//android.view.View[@content-desc="Forms"]
# Text on home screen

*** Keywords ***
User lands on home page
    Wait Until Element Is Visible    ${homeButton}
    Wait Until Element Is Visible    ${webViewButton}
    Wait Until Element Is Visible    ${loginSectionButton}
    Wait Until Element Is Visible    ${formsButton}