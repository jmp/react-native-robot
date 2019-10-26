# react-native-robot

A simple proof-of-concept demonstrating how to test a React Native
application using Robot Framework.

## Installation

[Node](https://nodejs.org/) and [Python](https://www.python.org/) are required.
Install those if you don't have them already.

Install Appium Doctor:

    yarn global add appium-doctor

Run Appium Doctor:

    appium-doctor

View the diagnostics and fix any necessary dependencies if needed.

Install [Appium](https://appium.io/) and other required dependencies defined in `package.json`:

    yarn

Set up a [Python virtual environment](https://docs.python.org/3/library/venv.html#module-venv):

    python -m venv .venv

Then activate the virtual environment (on Mac or Linux):

    source .venv/bin/activate

Or on Windows:

    .venv\Scripts\activate

Install the required Python modules:

    pip install -r requirements.txt

## Running the tests

Start the Appium server:

    yarn start-appium

Before running the tests, make sure you have a running Android virtual device,
or connect a real Android phone to your computer.

Run the test suite:

    yarn test

After you are done running tests, you can stop the Appium server:

    yarn stop-appium
