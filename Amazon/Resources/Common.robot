*** Settings ***
Library    SeleniumLibrary
*** Variables ***
*** Keywords ***
Comenzar test case
    open browser    about:blank       chrome

Terminar test case
    close browser