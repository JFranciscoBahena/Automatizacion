*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
selecciona producto
    clic en imagen
    clic en agregar
    verificar pagina

Clic en imagen
    click image                             xpath=//*[@id="search"]/div[1]/div[1]/div/span[1]/div[1]/div[2]/div/div/div/div/div[1]/span/a/div/img
    #Wait Until Page Contains                Back to search results
clic en agregar
    Click Button                            id=add-to-cart-button
Verificar pagina
    Wait Until Page Contains                Agregado al carrito