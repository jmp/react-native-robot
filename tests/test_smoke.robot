*** Settings ***
Documentation     Smoke tests
Resource          ${CURDIR}/../resources/common.resource

*** Test Cases ***
Launching the app
    Start Application
    Page Should Contain Text  Edit App.js to change this screen and then come back to see your edits.
