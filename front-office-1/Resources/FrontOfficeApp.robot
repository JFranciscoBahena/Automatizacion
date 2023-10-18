*** Settings ***
Resource    ./PO/BarraNavegacion.robot
Resource    ./PO/Carga.robot
Resource    ./PO/Equipo.robot

*** Variables ***

*** Keywords ***
ir a cargar la pagina
    carga.Se cargar la pagina
    carga.Verificar pagina cargada inicio
ir a pagina de "Equipo"
    BarraNavegacion.Seleccionar "Equipo"
    Equipo.Verificar pagina cargada "Equipo"
Validar pagina de "Equipo"
    Equipo.Verificar contenido de pagina