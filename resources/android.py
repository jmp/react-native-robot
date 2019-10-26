from collections import OrderedDict
from os.path import dirname, realpath, join

LIST__APPIUM_ARGS = [
  'http://localhost:4723/wd/hub',
]

DICT__APPIUM_KWARGS = OrderedDict([
    ('platformName', 'Android'),
    ('platformVersion', '9.0'),
    ('deviceName', 'Android Emulator'),
    ('app', realpath(join(dirname(__file__), '..', 'app', 'app.apk'))),
    ('automationName', 'appium'),
    ('appPackage', 'com.robot_test'),
    ('appActivity', 'MainActivity'),
])
