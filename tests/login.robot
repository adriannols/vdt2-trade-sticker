*** Settings ***

Documentation            Login Tests

Resource    ../resources/main.resource

Test Setup        Start Test
Test Teardown     Finish Test

*** Variables ***


*** Test Cases ***
Deve logar com sucesso
    Go to Login Page
    Submit Credentials     papito@gmail.com    vaibrasil
    
    User Logged In

Nao deve logar com senha incorreta
    Go to Login Page
    Submit Credentials        papito@gmail.com    102030 

    Toast Message Shold Be    Credenciais inválidas, tente novamente!
    #Thinking Time
    Sleep    1
