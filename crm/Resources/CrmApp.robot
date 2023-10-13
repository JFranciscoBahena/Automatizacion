*** Settings ***
Resource    ../Resources/PO/Inicio.robot
Resource    ../Resources/PO/InicioSesion.robot
Resource    ../Resources/PO/AñadirCliente.robot
Resource    ../Resources/PO/CerrarSesion.robot
Resource    ../Resources/PO/Clientes.robot
Resource    ../Resources/PO/NavegacionSuperior.robot

*** Variables ***

*** Keywords ***
ir a pagina de "inicio"
    Inicio.Navega a
    Inicio.Verificar pagina cargada

inicio sesion credenciales validas
    [Arguments]    ${email}    ${conraseña}
    NavegacionSuperior.Clic "inicio de sesion" link
    InicioSesion.Verificar pagina cargada inicio sesion
    InicioSesion.credenciales validas    ${email}    ${conraseña}
    clientes.verificar pagina cargada cliente