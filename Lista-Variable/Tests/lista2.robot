*** Settings ***
*** Variables ***
@{mi_variable}    prueba1    prueba2    prueba3

*** Test Cases ***
demostracion de variable
    log     ${mi_variable}[0]
    log     ${mi_variable}[1]
    log     ${mi_variable}[2]

demostracion de variable 2
    ${mi_lista_variable}  set variable    item 1    item 2    item 3
    log     ${mi_lista_variable}[0]
    log     ${mi_lista_variable}[1]
    log     ${mi_lista_variable}[2]