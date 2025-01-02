*** Settings ***
Library        AppiumLibrary
Library        ../../data/test.py

*** Variables ***
${Email}                         ${None}
${loginButton2}                  xpath=//android.view.ViewGroup[@content-desc="button-login-container"]/android.view.ViewGroup/android.widget.TextView
${signupButton}                  xpath=//android.view.ViewGroup[@content-desc="button-sign-up-container"]/android.view.ViewGroup/android.widget.TextView
${emailTextfield}                xpath=//android.widget.EditText[@content-desc="input-email"]
${passwordTextfield}             xpath=//android.widget.EditText[@content-desc="input-password"]
${confirmPasswordTextfield}      xpath=//android.widget.EditText[@content-desc="input-repeat-password"]
${submitLoginButton}             xpath=//android.view.ViewGroup[@content-desc="button-LOGIN"]/android.view.ViewGroup/android.widget.TextView
${loginSectionButton}            xpath=//android.view.View[@content-desc="Login"]
${signupButton2}                 xpath=//android.view.ViewGroup[@content-desc="button-SIGN UP"]/android.view.ViewGroup/android.widget.TextView


*** Keywords ***
User is able to successfully SignUp
    [Documentation]        User signup to the Application
    ${Email}                        Create User Email
    Click Element                    ${loginSectionButton}
    Wait Until Element Is Visible    ${emailTextfield}
    Click Element                    ${signupButton}
    Input Text                       ${emailTextfield}                     ${Email}
    Input Password                   ${passwordTextfield}                  Tester@1
    Input Password                   ${confirmPasswordTextfield}           Tester@1
    Click Element                    ${signupButton2}
    Sleep    3
    Capture Page Screenshot    signup.png