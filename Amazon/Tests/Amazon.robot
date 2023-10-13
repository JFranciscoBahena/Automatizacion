*** Settings ***
Documentation    esta es alguna informacion basica del SUIT
Library          SeleniumLibrary


*** Variables ***


*** Test Cases ***
Prueba agregar articulos al carrito de amazon
    [Documentation]    esta es alguna informacion basica del TEST
    [Tags]             Smoke
    #Inicializar Selenium
    Set selenium speed          .2s
    Set selenium timeout        10s

    #Se abre navegador
    log                         Starting the test case!
    open browser                https://www.amazon.com.mx/       chrome
    input text                  id=twotabsearchtextbox           ferrari f50
    click button                id=nav-search-submit-button
    click image                 xpath=//*[@id="search"]/div[1]/div[1]/div/span[1]/div[1]/div[2]/div/div/div/div/div[1]/span/a/div/img
    click button                id=add-to-cart-button
    click button                xpath=/html/body/div[8]/div[3]/div[1]/div/div/div[2]/div[2]/div/div/div[3]/div/span[2]/span/input
    page should contain         Agregado al carrito
    click link                  xpath=/html/body/div[1]/div[1]/div/div[1]/div[2]/div/div[1]/span/span/a
    select checkbox             id=sc-buy-box-gift-checkbox
    click button                id=proceed-to-checkout-action
    page should contain         Iniciar sesión para continuar
    sleep                       3s
    close browser

*** Keywords ***
