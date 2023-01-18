# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Resource          ../resources/common.robot
Suite Setup       Setup Browser
Suite Teardown    End suite
Library           QVision


*** Test Cases ***
Verify BearTracking
    Login
    TypeText      Search for bears            oxsana\n
    SetConfig     LogMatchedIcons             True        # Log matched image to logsß
    VerifyIcon    ${CURDIR}/../resources/images/map_pin_icon.png
    TypeText      Search for bears            baloo\n