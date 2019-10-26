# react-native-robot

A simple proof-of-concept demonstrating how to test a React Native
application using Robot Framework.

## Installation

Install [Appium](https://appium.io/) and start the Appium server.

Set up a [Python virtual environment](https://docs.python.org/3/library/venv.html#module-venv).

Install the requirements:

    pip install -r requirements.txt

## Running the tests

Start an Android virtual device or connect a real Android phone to your computer.

Run the test suite:

    robot --outputdir out tests
