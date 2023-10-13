*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${ETIQUETA_ENCABEZADO_cliente} =    Our Happy Customers

*** Keywords ***
Verificar pagina cargada cliente
    wait until page contains    ${ETIQUETA_ENCABEZADO_cliente}