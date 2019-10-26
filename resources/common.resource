*** Settings ***
Library              AppiumLibrary  run_on_failure=Log Source

*** Variables ***
${REMOTE_URL}        http://localhost:4723/wd/hub
${PLATFORM_NAME}     Android
${PLATFORM_VERSION}  9.0
${DEVICE_NAME}       Android Emulator
${APP}               ${CURDIR}/../app/app.apk
${APP_PACKAGE}       com.robot_test
${APP_ACTIVITY}      MainActivity

*** Keywords ***
Start Application
    Open Application  ${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    platformVersion=${PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    app=${APP}
    ...    automationName=appium
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    Wait Until Page Contains  Welcome to React
