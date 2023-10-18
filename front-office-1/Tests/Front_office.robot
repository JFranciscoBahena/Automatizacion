*** Settings ***
Documentation    hable sobre lo que hace este conjuntos
Resource    ../Resources/CommonWeb.robot
Resource    ../Resources/FrontOfficeApp.robot

Test Setup          Comenzar prueba
Test Teardown       Finalizar prueba

#robot -d Results Test/Front_Office.robot

*** Variables ***
${NAVEGADOR} =                  chrome
${URL} =                        https://automationplayground.com/front-office/
*** Test Cases ***
Deberia poder acceder a la pagina de "equipo"
        [Documentation]    Prueba 1
        [Tags]    test1
        FrontOfficeAPP.ir a cargar la pagina
        FrontOfficeAPP.ir a pagina de "Equipo"

La pagina "Equipo" debe de cumplir con los requisitos
        [Documentation]    Prueba 2
        [Tags]    test2
        FrontOfficeAPP.ir a cargar la pagina
        FrontOfficeAPP.ir a pagina de "Equipo"
        FrontOfficeAPP.Validar pagina de "Equipo"