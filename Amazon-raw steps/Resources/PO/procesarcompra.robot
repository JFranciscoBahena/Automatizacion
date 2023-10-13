*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Datos compra
    boton procesar compra
    validar pagina inicio
    validar texto pagina inicio
boton procesar compra
    click button                            xpath=//*[@id="sc-buy-box-ptc-button"]/span/input
validar pagina inicio
    Page Should Contain Element             iniciar sesión
validar texto pagina inicio
    Element Text Should Be                  ap_signin1a_pagelet_title   Sign In