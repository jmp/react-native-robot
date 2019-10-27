*** Settings ***
Library         AppiumLibrary
Resource        ${CURDIR}/${TARGET}.resource

*** Variables ***
${APPIUM_PORT}  4723
${APPIUM_URL}   http://localhost:${APPIUM_PORT}/wd/hub

*** Keywords ***
Launch Application
    Open Application  ${APPIUM_URL}  &{APPIUM_CAPABILITIES}
    Wait Until Application Has Loaded

Wait Until Application Has Loaded
    Wait Until Page Contains  Welcome to React
    Capture Page Screenshot
