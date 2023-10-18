*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CLIC_LINK_TEAM} =    xpath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[5]/a
*** Keywords ***
Seleccionar "Equipo"
    click link    ${CLIC_LINK_TEAM}
    #click element    css=#bs-example-navbar-collapse-1 > ul > li:nth-child(5) > a
