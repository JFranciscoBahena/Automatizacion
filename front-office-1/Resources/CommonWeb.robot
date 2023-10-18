*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Comenzar prueba
#Inicializar Selenium
    #Set selenium speed          .2s
    Set selenium timeout        10s
    open browser                about:blank      ${NAVEGADOR}

    # cambiar el tamaño de la ventana del navegador para grabar
    #Set window position         x=341   y=169
    Set window size             width=1280  height=720

Finalizar prueba
    close all browsers