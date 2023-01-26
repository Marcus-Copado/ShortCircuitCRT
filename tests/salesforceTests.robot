# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Resource                  ../resources/common.robot
Suite Setup               Setup Browser
Suite Teardown            End suite
Library                   QVision


*** Test Cases ***
Check Bears
    Home
    VerifyText            Map
    VerifyText            Satellite
    TypeText              Search for bears            Winnie\n
    VerifyIcon            image
    QVision.VerifyIcon    winniebear