*** Settings ***
Library  AppiumLibrary

*** Keywords ***
Launch Application
    Open Application  @{APPIUM_ARGS}  &{APPIUM_KWARGS}
    Wait Until Application Has Loaded
    Capture Page Screenshot

Wait Until Application Has Loaded
    Wait Until Page Contains  Welcome to React
