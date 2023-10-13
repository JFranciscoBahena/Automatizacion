*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${NAVEGAR_INICIO_SESION} =    id=SignIn

*** Keywords ***
Clic "inicio de sesion" link
    click link    ${NAVEGAR_INICIO_SESION}
