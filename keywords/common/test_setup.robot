*** Settings ***
Library                 AppiumLibrary


*** Variables ***


*** Keywords ***
Launch App
    [Arguments]  ${BROWSERSTACK_USERNAME}   ${BROWSERSTACK_ACCESS_KEY}   ${BROWSERSTACK_APP_ID}  ${TEST_NAME}
    ...   ${OS_VERSION}  ${DEVICE}  ${TIMEOUT}  ${AUTO_DISMISS_ALERTS}   ${ENABLE_MULTI_WINDOWS}
    Set Appium Timeout    ${TIMEOUT}
    Open Application  http://${BROWSERSTACK_USERNAME}:${BROWSERSTACK_ACCESS_KEY}@hub-cloud.browserstack.com/wd/hub
    ...   app=${BROWSERSTACK_APP_ID}    buildName=${BROWSERSTACK_BUILD_NAME}      name=${TEST_NAME}   os_version=${OS_VERSION}   device=${DEVICE}
    ...   autoDismissAlerts=${AUTO_DISMISS_ALERTS}    enableMultiWindows=${ENABLE_MULTI_WINDOWS}

Close App
    Run Keyword If Test Failed          Capture Page Screenshot     failedtest.png
    Close All Applications

BeforeTest
    [Arguments]    ${TEST_NAME}=${BROWSERSTACK_APP_NAME}
    Launch App  ${BROWSERSTACK_USERNAME}   ${BROWSERSTACK_ACCESS_KEY}   ${BROWSERSTACK_APP_ID}  ${TEST_NAME}
    ...         ${OS_VERSION}   ${DEVICE}  ${TIMEOUT}  ${AUTO_DISMISS_ALERTS}   ${ENABLE_MULTI_WINDOWS}

Click Retry
    Click Text    Retry

AfterTest
    Run Keyword If Timeout Occurred     Click Retry
    Close App