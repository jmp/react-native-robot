*** Settings ***
Documentation   Landing screen tests
Resource        ${CURDIR}/../resources/common.resource

*** Test Cases ***
Opens Landing
    [Documentation]             Check that the landing page is opened
    ...                         after the application has been launched.
    Page Should Contain Text    Edit App.js to change this screen
    ...                         and then come back to see your edits.
    Capture Page Screenshot

Mentions Twitter
    [Documentation]             Scroll to the bottom of the landing screen
    ...                         and make sure Twitter is mentioned there.
    Swipe By Percent            50  90  0  10  250
    Page Should Contain Text    Twitter
    Capture Page Screenshot
