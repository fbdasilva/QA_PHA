*** Settings ***
Documentation    Arquivo para armazenamento dos testes automatizados

Resource    ../../src/config/package.robot

Test Setup    Abrir navegador
Test Teardown    Fechar navegador

*** Test Cases ***
Caso de Teste 01: Pesquisar produto existente
    [Tags]    PESQUISA
    Acessar a pagina home do site Automation Practice
    Digitar o nome do produto "Blouse" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir se o produto "Blouse" foi listado no site
