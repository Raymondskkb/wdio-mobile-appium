*** Settings ***
Library        AppiumLibrary

*** Variables ***
${formsButton}                       xpath=//android.view.View[@content-desc="Forms"]
${inputField}                        xpath=//android.widget.EditText[@content-desc="text-input"]
${verifyTypedText}                   xpath=//android.widget.TextView[@content-desc="input-text-result"]
${switchToggle}                        //android.widget.Switch[@content-desc="switch"]
${switchToggleText}                    //android.widget.TextView[@content-desc="switch-text"]
${buttonActive}                        //android.view.ViewGroup[@content-desc="button-Active"]/android.view.ViewGroup
${buttonInactive}                      //android.view.ViewGroup[@content-desc="button-Inactive"]/android.view.ViewGroup
${dropdownMenu}                        //android.view.ViewGroup[@content-desc="Dropdown"]/android.view.ViewGroup/android.widget.EditText
${textForInputField}                   test text for text input field
${switchToggleON}                      ON
${switchToggleOFF}                     OFF
${listOptions}                         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.appcompat.widget.LinearLayoutCompat/android.widget.FrameLayout/android.widget.ListView/android.widget.CheckedTextView[3]

*** Keywords ***
User is able to fill form components
    Click Element    ${formsButton}
    Wait Until Element Is Visible    ${inputField}
    # formIputs
    Input Text    ${inputField}    ${textForInputField}
    Element Should Contain Text    ${verifyTypedText}    ${textForInputField}
    Element Should Contain Text    ${switchToggleText}    ${switchToggleON}
    Click Element    ${switchToggle}
    Element Should Contain Text    ${switchToggleText}    ${switchToggleOFF}
    Click Element    ${dropdownMenu}
    # Wait Until Page Contains    ${listOptions}
    Click Element    ${listOptions}
    Click Element    ${buttonInactive}
    Click Element    ${buttonActive}
    Capture Page Screenshot    form_compnents_page.png
