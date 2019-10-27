*** Settings ***
Resource        ${CURDIR}/../resources/common.resource
Documentation   Landing screen tests

*** Test Cases ***
Opens Landing
    Page Should Contain Text    Edit App.js to change this screen and then come back to see your edits.

Mentions Twitter
    Swipe By Percent            50  90  0  10  250
    Page Should Contain Text    Twitter
