*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${NAVEGAR_INICIO_SESION} =    id=SignIn
${NAVEGAR_CERRAR_SESION} =    xpath=/html/body/nav/ul/li/a
*** Keywords ***
Clic "inicio de sesion" link
    click link    ${NAVEGAR_INICIO_SESION}

Clic "Cerrar sesion"
    click link          ${NAVEGAR_CERRAR_SESION}