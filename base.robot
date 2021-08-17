*** Settings ***
Library     SeleniumLibrary

*** Variables  ***
${url}                   https://www.youse.com.br/users/email_verifications/new
*** Keywords ***
Nova sessão
    Open Browser                       ${url}           chrome

Encerra sessão
    Close Browser