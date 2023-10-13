*** Settings ***
Resource    ../Resources/scope.robot
*** Variables ***
${MI_VARIABLE}    alguna informacion prueba 1
*** Test Cases ***
crear y registrar una variable
    #${mi_variable}  set variable    alguna informacion
    log    ${MI_VARIABLE}
acceso a una variable
    log    ${MI_VARIABLE}

*** Keywords ***
