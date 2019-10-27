*** Settings ***
Documentation   Proof-of-concept functional tests for
...             a simple React Native mobile application.
Resource        ${CURDIR}/../resources/common.resource
Suite Setup     Launch Application
Suite Teardown  Close Application
