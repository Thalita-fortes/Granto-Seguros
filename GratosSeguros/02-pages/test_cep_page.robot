*** Settings ***
Documentation        Nesse arquivo são adicionados todas as variaveis dos testes
Resource    ../Main.robot


*** Variables ***
# URL base da API
${BASE_URL}       https://viacep.com.br
${PesquisaCepBemSucedida}                              /ws/01001000/json/

# CEP válido e dados esperados
${reqBemSucedida}                200