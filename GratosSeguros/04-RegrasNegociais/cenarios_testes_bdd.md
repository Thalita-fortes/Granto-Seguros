# **Cenários de Teste**

## **Cenário 1: Consulta de CEP válido**
- **Objetivo**: Validar que a API retorna os dados corretos ao consultar um CEP existente.
- **Dado**: Que o usuário consulta o CEP "01001000".
- **Quando**: A API retorna os dados do endereço.
- **Então**: O logradouro deve ser "Praça da Sé", o bairro "Sé" e a cidade "São Paulo".
- **Resultado esperado**:
  - Código HTTP: 200.
  - Dados do endereço correspondem ao esperado.

---

## **Cenário 2: Consulta de CEP inexistente**
- **Objetivo**: Validar que a API retorna o campo `"erro": true` ao consultar um CEP válido, porém inexistente.
- **Dado**: Que o usuário consulta o CEP "99999999".
- **Quando**: A API processa a consulta.
- **Então**: O campo `"erro"` deve estar presente no retorno com o valor `true`.
- **Resultado esperado**:
  - Código HTTP: 200.
  - JSON com `"erro": true`.

---

## **Cenário 3: Consulta de CEP com formato inválido**
- **Objetivo**: Garantir que a API retorna um erro 400 (Bad Request) ao consultar um CEP com formato incorreto.
- **Dado**: Que o usuário consulta o CEP "95010A10".
- **Quando**: A API valida o formato do CEP.
- **Então**: A API deve retornar o código HTTP 400.
- **Resultado esperado**:
  - Código HTTP: 400.
  - Nenhum dado de endereço é retornado.

---

## **Cenário 4: Pesquisa por endereço com parâmetros válidos**
- **Objetivo**: Validar que a API retorna uma lista de resultados ao pesquisar por endereço com UF, Cidade e Logradouro válidos.
- **Dado**: Que o usuário pesquisa por "RS", "Porto Alegre" e "Domingos".
- **Quando**: A API retorna os resultados da pesquisa.
- **Então**: Os CEPs e endereços correspondentes devem estar presentes no retorno.
- **Resultado esperado**:
  - Código HTTP: 200.
  - Lista de CEPs e endereços no JSON.

---

## **Cenário 5: Pesquisa por endereço com parâmetros inválidos**
- **Objetivo**: Validar que a API retorna erro 400 (Bad Request) ao pesquisar com parâmetros incompletos ou inválidos.
- **Dado**: Que o usuário pesquisa por UF "RS" e Cidade "Po".
- **Quando**: A API valida os parâmetros da pesquisa.
- **Então**: A API deve retornar o código HTTP 400.
- **Resultado esperado**:
  - Código HTTP: 400.
  - Nenhum dado de endereço é retornado.

---
## Cenário 6: Consulta com formato de retorno JSON e XML

- **Objetivo**: Garantir que a API retorna corretamente os dados no formato especificado pelo usuário (JSON ou XML).

### Cenário 6.1: Retorno no formato JSON
- **Dado**: Que o usuário consulta o CEP "01001000" e escolhe o formato de retorno "JSON".
- **Quando**: A API processa a consulta com o formato especificado.
- **Então**: 
  - O retorno deve ser no formato JSON.
  - O conteúdo deve incluir:
    - Logradouro: "Praça da Sé".
    - Bairro: "Sé".
    - Cidade: "São Paulo".
- **Resultado esperado**:
  - Código HTTP: 200.
  - Formato do retorno: JSON.
  - Dados retornados:
    ```json
    {
      "cep": "01001-000",
      "logradouro": "Praça da Sé",
      "complemento": "lado ímpar",
      "bairro": "Sé",
      "localidade": "São Paulo",
      "uf": "SP",
      "estado": "São Paulo",
      "regiao": "Sudeste",
      "ibge": "3550308",
      "gia": "1004",
      "ddd": "11",
      "siafi": "7107"
    }
    ```

### Cenário 6.2: Retorno no formato XML
- **Dado**: Que o usuário consulta o CEP "01001000" e escolhe o formato de retorno "XML".
- **Quando**: A API processa a consulta com o formato especificado.
- **Então**:
  - O retorno deve ser no formato XML.
  - O conteúdo deve incluir:
    - Logradouro: "Praça da Sé".
    - Bairro: "Sé".
    - Cidade: "São Paulo".
- **Resultado esperado**:
  - Código HTTP: 200.
  - Formato do retorno: XML.
  - Dados retornados:
    ```xml
    <?xml version="1.0" encoding="UTF-8"?>
    <xmlcep>
        <cep>01001-000</cep>
        <logradouro>Praça da Sé</logradouro>
        <complemento>lado ímpar</complemento>
        <bairro>Sé</bairro>
        <localidade>São Paulo</localidade>
        <uf>SP</uf>
        <estado>São Paulo</estado>
        <regiao>Sudeste</regiao>
        <ibge>3550308</ibge>
        <gia>1004</gia>
        <ddd>11</ddd>
        <siafi>7107</siafi>
    </xmlcep>
    ```

# **Justificativa para Automação**

## **Cenário Escolhido: Consulta de CEP válido**
- **Motivo da Escolha**:
  - Alta relevância e frequência de uso na API.
  - Impacto direto na experiência do usuário.
  - Dados de retorno são consistentes, facilitando validações assertivas.
```