*** Settings ***
Documentation    este es documento del test suit
Resource     ../Resources/AmazonApp.robot
Resource     ../Resources/Common.robot

Test Setup       Common.Abrir navegador
Test Teardown    Common.Cerrar navegador
*** Variables ***
${navegador}    chrome
${url}    https://www.amazon.com/
${producto}    ferrari 548
*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    AmazonApp.carga pagina
    AmazonApp.busca producto

User must sign in to check out 2
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    AmazonApp.carga pagina
    AmazonApp.busca producto
    AmazonApp.selecconar ferrari
    AmazonApp.Procesar compra
