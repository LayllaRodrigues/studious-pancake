*** Settings ***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Cases ***

Login com sucesso 

    Go To                ${url}
    Input Text           css:input[name=email]                  laylla.rodrigues@youse.com.br
    Click Element        css:input[name='commit']
    Input Text           css:input[name='user[password]']       Youse123*
    Click Element        css:input[name='commit']

    Current Frame Should Contain   Login efetuado com sucesso.

Login sem sucesso 
    [tags]               login_error
    Go To                ${url}
    Input Text           css:input[name=email]                  laylla.rodrigues@youse.com.br
    Click Element        css:input[name='commit']
    Input Text           css:input[name='user[password]']       Youse123
    Click Element        css:input[name='commit']


    Current Frame Should Contain    Email ou senha inválidos.



