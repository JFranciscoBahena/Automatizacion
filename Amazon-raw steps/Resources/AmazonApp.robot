*** Settings ***
Resource    ../Resources/PO/buscarferrari.robot
Resource    ../Resources/PO/seleccionarferrari.robot
Resource    ../Resources/PO/procesarcompra.robot
Resource    ../Resources/PO/carga.robot

*** Keywords ***
carga pagina
    carga.carga
    #carga.verificar pagina

busca producto
    buscarferrari.busca producto

selecconar ferrari
    seleccionarferrari.selecciona producto

Procesar compra
    procesarcompra.Datos compra


