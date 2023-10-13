*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${ETIQUETA_ENCABEZADO_INICIO} =     Customers Are Priority One!

*** Keywords ***
Navega a
    go to                       ${URL}
Verificar pagina cargada
    wait until page contains    ${ETIQUETA_ENCABEZADO_INICIO}