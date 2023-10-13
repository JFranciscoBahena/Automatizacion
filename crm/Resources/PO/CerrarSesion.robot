*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${VALIDAR_PAGIMA_SESION} =    Signed Out

*** Keywords ***
Verificar pagina cargada cerrar sesion
    wait until page contains    ${VALIDAR_PAGIMA_SESION}