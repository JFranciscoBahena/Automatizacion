*** Settings ***
Resource    ../Resources/PO/cargaybusqueda.robot
Resource    ../Resources/PO/seleccionarferrari.robot
Resource    ../Resources/PO/iracarrito.robot

*** Keywords ***
buscar producto ferrari
    cargaybusqueda.buscar productos

seleccionar producto
    cargaybusqueda.buscar productos
    seleccionarferrari.carga de ferrari

ir a carrito
    cargaybusqueda.buscar productos
    seleccionarferrari.carga de ferrari
    iracarrito.ir carrito