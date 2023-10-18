*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${VERIFICACION_PAGINA_INICIO} =    RobotFrameworkTutorial.com Test Client
*** Keywords ***
Se cargar la pagina
    go to    ${URL}

Verificar pagina cargada inicio
    wait until page contains    ${VERIFICACION_PAGINA_INICIO}