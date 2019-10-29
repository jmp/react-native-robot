*** Settings ***
Library           AppiumLibrary
Resource          ${CURDIR}/targets/${TARGET}.robot

*** Variables ***
${APPIUM_HOST}    http://localhost
${APPIUM_PORT}    4723
${APPIUM_URL}     ${APPIUM_HOST}:${APPIUM_PORT}/wd/hub

*** Keywords ***
Launch Application
    [Documentation]   Launches the application with the given
    ...               Appium server URL and capabilities.
    Open Application  ${APPIUM_URL}  &{APPIUM_CAPABILITIES}
    Finish Loading

Finish Loading
    [Documentation]   Waits until the application has loaded.
    Wait Until Page Contains  Welcome to React
    Capture Page Screenshot
