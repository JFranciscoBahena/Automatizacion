*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${ENCABZADO} =            Login
${CORREO_TEXBOX} =        id=email-id
${CONTRASEÑA_TEXBOX} =    id=password
${SUBMIT_BUTTON} =        id=submit-id
*** Keywords ***
Verificar pagina cargada inicio sesion
    wait until page contains    ${ENCABZADO}

credenciales validas
    [Arguments]    ${email}         ${conraseña}
    llenar el campo "email"         ${email}
    llenar el campo "contrasña"     ${conraseña}
    click "submit button

llenar el campo "email"
    [Arguments]    ${email}
    input text                  ${CORREO_TEXBOX}    ${email}
llenar el campo "contrasña"
    [Arguments]    ${conraseña}
    input text                  ${CONTRASEÑA_TEXBOX}    ${conraseña}
click "submit button
    click button                ${SUBMIT_BUTTON}
