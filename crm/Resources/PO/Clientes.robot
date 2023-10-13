*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${ETIQUETA_ENCABEZADO_cliente} =    Our Happy Customers
${CLICK_BOTON_AÑADIR_CLIENTE} =     id=new-customer
${ETIQUETA_ENCABEZADO_CLIENTE_REGISTRADO_CON_EXITO} =    Success! New customer added.

*** Keywords ***
Verificar pagina cargada cliente
    wait until page contains    ${ETIQUETA_ENCABEZADO_cliente}

click agregar cliente
    click link                  ${CLICK_BOTON_AÑADIR_CLIENTE}

verificar pagina cargada cliente se registro con exito
    wait until page contains    ${ETIQUETA_ENCABEZADO_CLIENTE_REGISTRADO_CON_EXITO}