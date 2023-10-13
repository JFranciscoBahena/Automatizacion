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


Agregar nuevo cliente
    clientes.click agregar cliente
    añadircliente.verificar pagina cargada cliente
    añadircliente.agregar nuevo cliente
    clientes.verificar pagina cargada cliente se registro con exito

Cerrar sesion
    navegacionSuperior.Clic "Cerrar sesion"
    CerrarSesion.Verificar pagina cargada cerrar sesion