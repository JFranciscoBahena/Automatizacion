*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${VERIFICACION_PAGINA_TEAM} =    css=#team > div > div:nth-child(1) > div > h2

*** Keywords ***
Verificar pagina cargada "Equipo"
        wait until page contains element    ${VERIFICACION_PAGINA_TEAM}

Verificar contenido de pagina
        #cuando falla en crhome por mayusculas y misculas
        #element text should be    ${VERIFICACION_PAGINA_TEAM}    Our Amazing Team
        ${element_text} =    get text    ${VERIFICACION_PAGINA_TEAM}
        should be equal as strings     ${element_text}    Our Amazing Team    ignore_case=true
