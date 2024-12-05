*** Settings ***
Resource             ../../Main.robot
Documentation        Nessa tela será adicionado todos os cenários de testes  
### Inicia/fecha sessão do navegador por cenario de teste
# Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Test Cases ***
Consulta CEP Válido
    [Documentation]    Valida se o endpoint de consulta de CEP valido é realizado com sucesso
    [Tags]    criticos
    Valida se a requisição de pesquisa de codigo valido retorna o código de sucesso

Valida os dados retornados ao pesquisar por um CEP valido
    [Documentation]    Valida se o endpoint de consulta de CEP valido é realizado com sucesso
    [Tags]    criticos
    Verifica os campos esperados no JSON ao pequisar um CEP valido
