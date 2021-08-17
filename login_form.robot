*** Settings ***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Cases ***

Login com sucesso 
    Go To                ${url}

    Login With  laylla.rodrigues@youse.com.br       Youse123*

    sleep   5s

    Current Frame Should Contain   Login efetuado com sucesso.

Login sem sucesso 
    Go To                ${url}
    Login With  laylla.rodrigues@youse.com.br       Youse123

    sleep   5s

   
    Current Frame Should Contain    Email ou senha inválidos.

*** Keywords ***
Login With
    [Arguments]     ${uname}    ${pass}

    Input Text           css:input[name=email]                  ${uname}             
    Click Element        css:input[name='commit']
    Input Text           css:input[name='user[password]']       ${pass}
    Click Element        css:input[name='commit']

