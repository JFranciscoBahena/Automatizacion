*** Settings ***
Documentation       Esta es alguna informacion basica del suite
Library             SeleniumLibrary

Resource            ../Resources/Common.robot
Resource            ../Resources/CrmApp.robot

Test Setup          Comenzar prueba
Test Teardown       Finalizar prueba

*** Variables ***
${NAVEGADOR} =                  chrome
${URL} =                        https://automationplayground.com/crm/
${LOGIN_EMAIL_VALIDO} =         admin@robotframeworktutorial.com
${LOGIN_CONTRASEÑA_VALIDO} =    qwe
*** Test Cases ***
La página de inicio debería cargarse
   [Documentation]              Esta es alguna informacion basica del TEST
   [Tags]                       1001    Smoke   Home
    #Carga pagina
    CrmApp.ir a pagina de "inicio"
    #sleep               3s
El inicio de sesión debe realizarse correctamente con credenciales válidas
   [Documentation]              Esta es alguna informacion basica del TEST
   [Tags]                       1002    Smoke   Login
    #Carga pagina
    CrmApp.ir a pagina de "inicio"
    #Login
    CrmApp.inicio sesion credenciales validas    ${LOGIN_EMAIL_VALIDO}    ${LOGIN_CONTRASEÑA_VALIDO}
    #sleep               3s
Debería poder cerrar sesión
   [Documentation]              Esta es alguna informacion basica del TEST
   [Tags]                       1004    Smoke   Login
    #Carga pagina
    CrmApp.ir a pagina de "inicio"
    #Login
    CrmApp.inicio sesion credenciales validas    ${LOGIN_EMAIL_VALIDO}    ${LOGIN_CONTRASEÑA_VALIDO}
    #Salir
    CrmApp.Cerrar sesion
    #sleep               3s
Debería ser capaz de agregar nuevo cliente.
   [Documentation]              Esta es alguna informacion basica del TEST
   [Tags]                       1006    Smoke   Contacts
    #Carga pagina
    CrmApp.ir a pagina de "inicio"
    #Login
    CrmApp.inicio sesion credenciales validas    ${LOGIN_EMAIL_VALIDO}    ${LOGIN_CONTRASEÑA_VALIDO}
    #Agregar cliete
    CrmApp.Agregar nuevo cliente
    #Salir
    CrmApp.Cerrar sesion
    #sleep               3s


*** Keywords ***
