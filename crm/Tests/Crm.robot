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
Debería ser capaz de agregar nuevo cliente.
   [Documentation]              Esta es alguna informacion basica del TEST
   [Tags]                       1006    Smoke   Contacts

    CrmApp.ir a pagina de "inicio"
    #Login
    CrmApp.inicio sesion credenciales validas    ${LOGIN_EMAIL_VALIDO}    ${LOGIN_CONTRASEÑA_VALIDO}


    #Agregar cliete
    click link                  id=new-customer
    wait until page contains    Add Customer
    input text                  id=EmailAddress     america-fran@hotmail.com
    input text                  id=FirstName        francisco
    input text                  id=LastName         bahena
    input text                  id=City             acayucan
    select from list by value   id=StateOrRegion    NM
    select radio button         gender              male
    select checkbox             promos-name
    click button                Submit
    wait until page contains    Success! New customer added.
    #Salir
    click link                  xpath=/html/body/nav/ul/li/a
    wait until page contains    Signed Out
    sleep               3s

*** Keywords ***
