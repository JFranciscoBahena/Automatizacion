*** Settings ***
Documentation    ir a carrito
Library    SeleniumLibrary

*** Keywords ***
ir carrito
    clic ir a carrito
    seleccionar check radio
    clic proceder al pago
    validar pagina iniciar sesion

clic ir a carrito
    click link                  xpath=/html/body/div[1]/div[1]/div/div[1]/div[2]/div/div[1]/span/span/a

seleccionar check radio
    select checkbox             id=sc-buy-box-gift-checkbox

clic proceder al pago
    click button                id=proceed-to-checkout-action

validar pagina iniciar sesion
    page should contain         Iniciar sesión para continuar
