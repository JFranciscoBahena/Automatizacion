*** Settings ***
Library    SeleniumLibrary

#Resource    ../AmazonApp.robot
*** Variables ***
${ingresa_texto}    xpath=//*[@id="twotabsearchtextbox"]
${boton_buscar}     xpath=//*[@id="nav-search-submit-button"]
*** Keywords ***
busca producto
    ingresar texto
    clic boton buscar
ingresar texto
    Input Text      ${ingresa_texto}              ${producto}
clic boton buscar
    Click Button    ${boton_buscar}
    Wait Until Page Contains               27 resultados para "ferrari 548"