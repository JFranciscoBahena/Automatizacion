*** Settings ***
Library    SeleniumLibrary
*** Variables ***
*** Keywords ***
Comenzar test case
    open browser                https://www.amazon.com.mx/       chrome
    Set selenium speed          .2s
    Set selenium timeout        10s
    sleep                       3s
Terminar test case
    close browser