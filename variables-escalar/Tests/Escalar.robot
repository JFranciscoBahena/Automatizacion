*** Settings ***
*** Variables ***
${mi_variable} =    Hola
*** Test Cases ***
colocar una variable en un caso de prueba
    [Tags]    current
    ${mi_nueva_variable}    set variable    prueba varibale
    log    ${mi_nueva_variable}

Demostracion de variable
    LOG    ${mi_variable}

Demostracion de variable 2
    LOG    ${mi_variable}

*** Keywords ***
