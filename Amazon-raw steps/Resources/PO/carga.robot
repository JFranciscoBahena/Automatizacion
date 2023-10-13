*** Settings ***
Library    SeleniumLibrary

#Resource    ../AmazonApp.robot

*** Variables ***

*** Keywords ***
carga
    go to    ${url}
#verificar pagina
    #wait until page contains    your amazon.com