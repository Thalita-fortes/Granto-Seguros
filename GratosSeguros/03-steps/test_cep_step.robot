*** Settings ***
Resource    ../Main.robot
Documentation        Nesse arquivo são adicionados todas as keywords dos testes

Library    Collections
Library    RequestsLibrary
Library    BuiltIn


*** Keywords ***    
Valida se a requisição de pesquisa de codigo valido retorna o código de sucesso
    Verifica se o GET retorna 200  ${BASE_URL}   ${PesquisaCepBemSucedida}


Verifica os campos esperados no JSON ao pequisar um CEP valido
    Testar JSON Local

Verifica se o GET retorna 200
    [Arguments]    ${url}    
    ...            ${modulo}
    ${response}=    GET    ${url}${modulo}
    Status Should Be    ${reqBemSucedida}    ${response}

#Extrai o corpo da resposta como JSON
Extrair dados da API JSON
    Create Session    via_cep    ${BASE_URL}
    ${response}=      GET On Session    via_cep    ${PesquisaCepBemSucedida}  
    Should Be Equal As Strings    ${response.status_code}    200

    # Desserializar o JSON diretamente
    ${dados_json}=    Evaluate    json.loads('${response.text}')    modules=json
    ${logradouro}=    Get From Dictionary    ${dados_json}    logradouro
    ${bairro}=        Get From Dictionary    ${dados_json}    bairro
    ${uf}=            Get From Dictionary    ${dados_json}    uf

    Log    Logradouro: ${logradouro}
    Log    Bairro: ${bairro}
    Log    UF: ${uf}

Testar JSON Local
    ${json_string}=    Set Variable    {"cep": "01001-000", "logradouro": "Praça da Sé", "bairro": "Sé", "uf": "SP"}
    ${dados_json}=     Evaluate    json.loads('${json_string}')    modules=json
    ${logradouro}=     Get From Dictionary    ${dados_json}    logradouro
    Log    Logradouro: ${logradouro}