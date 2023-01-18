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
    #QVision.VerifyIcon                       ${BASE_IMAGE_PATH}/bear.png
    VerifyIcon    bear                        template_res_w=1920
    TypeText      Search for bears            baloo\n