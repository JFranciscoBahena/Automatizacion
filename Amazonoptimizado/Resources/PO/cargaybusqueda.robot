*** Settings ***
Documentation    carga y busqueda en amazon
Library          SeleniumLibrary

*** Keywords ***
buscar productos
    entrar a amazon
    buscador
    clic buscar

entrar a amazon
    open browser    https://www.amazon.com.mx/       chrome

buscador
    input text      id=twotabsearchtextbox           ferrari f50

clic buscar
    click button    id=nav-search-submit-button