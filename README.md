# React Native Robot

A simple proof-of-concept project demonstrating how to test a
[React Native](https://facebook.github.io/react-native/)
application using [Robot Framework](https://robotframework.org/)
and [Appium](https://appium.io/) (via [robotframework-appiumlibrary](https://github.com/serhatbolsu/robotframework-appiumlibrary)).

For the most part, everything here is applicable to native Android apps,
but the demo app is written in React Native. The React Native part is mainly
to show that we can locate components with Robot Framework even in React
Native apps.

## Installation

### Prerequisites

[Node](https://nodejs.org/) is required since the Appium server is distributed as
an [NPM](https://www.npmjs.com/) package. The latest stable version is recommended.

[Yarn](https://yarnpkg.com/) is used for dependency management. You can also use `npm`
if you want. The latest version is recommended.

[Python](https://www.python.org/) is required by Robot Framework. The latest version
supported by Robot Framework is recommended.

### Appium

Install Appium and other required dependencies defined in `package.json`:

    yarn

### Robot Framework

Set up a [Python virtual environment](https://docs.python.org/3/library/venv.html#module-venv):

    python -m venv .venv

Then activate the virtual environment (on Mac or Linux):

    source .venv/bin/activate

Or on Windows:

    .venv\Scripts\activate

Install the required Python modules in the virtual environment:

    pip install -r requirements.txt

## Running the tests

Start the Appium server:

    yarn start-appium

Before running the tests, make sure you have a running Android virtual device,
or connect a real Android phone to your computer.

Run the test suite:

    yarn test

This will run the tests and produce the report, log, screenshots, etc. under `reports`.

After you are done running tests, you can stop the Appium server:

    yarn stop-appium

## How it works

Here I will try to explain how everything in this project is tied together.

The app we want to test is `app/app.apk`. This is just a simple demo app for Android,
written in React Native. It just shows a scrollable welcome screen with some text.

The actual *test suites*, written in Robot Framework syntax, can be found under `src/`. Since
there can be many different test suites, some common functionality is extracted into
*resource files*, found under the `resources/` directory.

In the resource files, I have divided the resources so that different configurations can be
written for different targets (e.g. Android, iOS). For example, for an Android app, we have
to define the `.apk` or `.apks` file we want to run, whereas for iOS we would define an
`.ipa` file. We can easily switch the target by providing the `TARGET` variable for the
`robot` executable.

Each test suite includes the `common.robot` resource file, which in turn includes the
appropriate target resource file (e.g. `android.robot`) depending on the value of `TARGET`
that was given when the tests were run.

The tests will generate reports under the `reports/` directory.

## Troubleshooting

You can use [Appium Doctor](https://github.com/appium/appium-doctor) to verify that you have all the dependencies
required by Appium installed and configured:

    yarn global add appium-doctor

Run Appium Doctor:

    appium-doctor

View the diagnostics and fix any necessary dependencies.

## Useful links

* [Robot Framework user guide](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html)
* [Keyword documentation for robotframework-appiumlibrary](http://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html)
* [How to write good test cases using Robot Framework](https://github.com/robotframework/HowToWriteGoodTestCases/blob/master/HowToWriteGoodTestCases.rst)
* [How to test Android app bundle](http://appium.io/docs/en/writing-running-appium/android/android-appbundle/)
