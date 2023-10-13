*** Settings ***
Documentation    esta es alguna informacion basica del SUIT
Resource    ../Resources/Common.robot/
Resource    ../Resources/Amazon.robot/

Test Setup       Comenzar test case
Test Teardown    Terminar test case


*** Variables ***

*** Test Cases ***
buscar producto
    [Tags]    smoke
    Amazon.buscar producto ferrari

Añadir producto al carrito
    [Tags]    smoke
    Amazon.buscar producto ferrari
    Amazon.seleccionar producto

ir al carrito
    [Tags]    smoke
    Amazon.buscar producto ferrari
    Amazon.seleccionar producto
    amazon.ir a carrito

*** Keywords ***
