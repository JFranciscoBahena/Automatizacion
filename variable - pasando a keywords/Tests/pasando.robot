*** Settings ***
Library    SeleniumLibrary

*** Variables ***
*** Test Cases ***
El usuario puede buscar producto
    @{url_y_navegador}    set variable    https://www.google.com/    chrome

    #comenzar la prueba web    https://www.google.com/    chrome
    comenzar la prueba web    ${url_y_navegador}
*** Keywords ***
#comenzar la prueba web
    #[Arguments]         ${url}    ${navegador}
    #open browser        ${url}    ${navegador}
    #close browser
comenzar la prueba web
    [Arguments]         ${url_y_navegador}
    open browser        ${url_y_navegador}[0]    ${url_y_navegador}[1]
    close browser
