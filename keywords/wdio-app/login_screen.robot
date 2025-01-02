*** Settings ***
Library        AppiumLibrary
Library        ../../data/test.py

*** Variables ***
${loginButton2}           xpath=//android.view.ViewGroup[@content-desc="button-login-container"]/android.view.ViewGroup/android.widget.TextView
${signupButton}           xpath=//android.view.ViewGroup[@content-desc="button-sign-up-container"]/android.view.ViewGroup/android.widget.TextView
${emailTextfield}         xpath=//android.widget.EditText[@content-desc="input-email"]
${passwordTextfield}      xpath=//android.widget.EditText[@content-desc="input-password"]
${submitLoginButton}      xpath=//android.view.ViewGroup[@content-desc="button-LOGIN"]/android.view.ViewGroup/android.widget.TextView
${loginSectionButton}     xpath=//android.view.View[@content-desc="Login"]
${Email}                ${None}

*** Keywords ***
User is able to successfully Log in
    [Documentation]        User logs into the Application
    ${Email}        Create User Email
    Click Element    ${loginSectionButton}
    Wait Until Element Is Visible    ${emailTextfield}
    Input Text    ${emailTextfield}    ${Email}
    Input Password    ${passwordTextfield}    Tester@1
    Click Element    ${submitLoginButton}
    Sleep    3
    Capture Page Screenshot    login.png