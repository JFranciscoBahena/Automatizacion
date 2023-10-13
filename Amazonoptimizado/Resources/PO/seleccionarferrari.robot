*** Settings ***
Documentation    agregar al carrito
Library    SeleniumLibrary

*** Keywords ***
carga de ferrari
    clic en la imagen
    añadir al carrito
    negar proteccion
    validar agregado

clic en la imagen
    click image                 xpath=//*[@id="search"]/div[1]/div[1]/div/span[1]/div[1]/div[2]/div/div/div/div/div[1]/span/a/div/img

añadir al carrito
    click button                id=add-to-cart-button

negar proteccion
    click button                xpath=//*[@id="attachSiNoCoverage"]/span/input

Validar agregado
    page should contain         Agregado al carrito