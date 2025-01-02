*** Settings ***
Library                 AppiumLibrary


*** Variables ***
${APPIUM-LOCAL-SERVER}         http://localhost:4723
${APPIUM-REMOTE-SERVER}        http://192.168.100.3:4723


${LANDING-LOGIN-BUTTON}        id=com.oldmutual.myoldmutual.roa.qa:id/container
# ${USERNAME}                    id=username
# ${PASSWORD}                    id=password
${SIGNIN-LOGIN-BUTTON}         id=signOnButtonSpan
# ${apk}                         ..${CURDIR}\resources\app-debug.
${chat21-app}                  ${CURDIR}/../resources/Chat21.apk
${OM-APP}                      ${CURDIR}/../../resources/app-qa-debug.apk
${WDIO-APP}                    ${CURDIR}/../../resources/wdio_native_app-v1_0_8.apk
${DRPDWN-COUNTRY-SELECT}       id=com.oldmutual.myoldmutual.roa.qa:id/text_input_end_icon
${CHOOSE-COUNTRY-TITLE}        id=com.oldmutual.myoldmutual.roa.qa:id/chooseCountryTitle
${SMSNG-DEVICE}                R58NB0NFQ6M
${REALME-DEVICE}               0151813S45108F73
${EMULATOR-DEVICE}             emulator-5554

${login_btn}                            xpath=//android.widget.TextView[@text="LOG IN"]
${contact_us_btn}                       id=contactUsCard
${our_solutions_btn}                    id=solutionsForYouCard
${sign_up_link}                         Don't have an account? Sign up

${username_input}                       xpath=//android.widget.EditText[@resource-id="username"]
${password_input}                       xpath=//android.widget.EditText[@resource-id="password"]
${login_screen_btn}                     LOGIN

${username}                             reyiam22
${password}                             Tester@1

*** Keywords ***
Launch App
    Open Application    ${APPIUM-LOCAL-SERVER}     platformName=Android  	deviceName=${EMULATOR-DEVICE}	    app=${WDIO-APP}     automationName=UiAutomator2        autoGrantPermissions=true
    Sleep    10

Close App
    Run Keyword If Test Failed          Capture Page Screenshot     failedtest.png
    Close All Applications