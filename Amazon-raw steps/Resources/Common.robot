*** Settings ***
Library    SeleniumLibrary

#Resource    ../Tests/AmazonApp.robot

*** Variables ***

*** Keywords ***
Abrir navegador
    open browser    about:blank     ${navegador}
    #Wait Until Page Contains                Your Amazon.com

Cerrar navegador
    Close Browser