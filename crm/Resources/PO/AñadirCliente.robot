*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${ETIQUETA_ENCABEZADO_AÑADIR_CLIENTE} =     Add Customer
${CLICK_BOTON_SUBMIT} =                     Submit
${TEXT_EMAIL} =                             id=EmailAddress
${TEXT_PRIMER_NOMBRE} =                     id=FirstName
${TEXT_APELLIDOS} =                         id=LastName
${TEXT_CIUDAD} =                            id=City
${SELECT_LISTA_ESTADO} =                    id=StateOrRegion
${SELECT_ERADIO_GENERO} =                   gender
${SELECT_CHECK_BOX} =                       name=promos-name


*** Keywords ***
Verificar pagina cargada cliente
    wait until page contains    ${ETIQUETA_ENCABEZADO_AÑADIR_CLIENTE}

Agregar nuevo cliente
    llenar los campos del cliente
    click en el boton submit

llenar los campos del cliente
    input text                      ${TEXT_EMAIL}            america-fran@hotmail.com
    input text                      ${TEXT_PRIMER_NOMBRE}    francisco
    input text                      ${TEXT_APELLIDOS}        bahena
    input text                      ${TEXT_CIUDAD}           acayucan
    select from list by value       ${SELECT_LISTA_ESTADO}   NM
    select radio button             ${SELECT_ERADIO_GENERO}  male
    select checkbox                 ${SELECT_CHECK_BOX}

click en el boton submit
    click button                ${CLICK_BOTON_SUBMIT}
