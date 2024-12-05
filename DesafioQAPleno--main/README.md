<h1>  Automação Robot Framework: Este repositório contém o projeto de automação de testes para a API ViaCEP, utilizando o Robot Framework. O objetivo principal é validar os endpoints da API, garantindo sua funcionalidade e conformidade com os requisitos.

## Descrição do Projeto

Este repositório contém o projeto de automação de testes para a API ViaCEP, utilizando o Robot Framework. O objetivo principal é validar os endpoints da API, garantindo sua funcionalidade e conformidade com os requisitos.

## Estrutura dos Testes

Cada **suite de teste** segue a estrutura de inicialização e encerramento de sessões de navegador, além de criar pastas específicas para armazenar logs de cada execução, evitando que os logs poluam a pasta raiz.


## Como Executar

### Requisitos
- **Robot Framework**: Para rodar os testes, você precisará ter o Robot Framework instalado.
- **Navegador Chrome** e **WebDriver** compatível.

## **Dependências do Projeto**
Todas as dependências necessárias para rodar o projeto estão descritas no arquivo `requirements.txt`. Certifique-se de instalá-las antes de executar os testes:
```bash
pip install -r requirements.txt
```

### Executando os Testes

Execute os testes usando o seguinte comando:

```bash
robot Tests/test_cep.robot"
```

## Estrutura de Pastas

```
├── 01-resources/
│   └── CenariosTestes/
│       └── test_cep.robot
├── README.md
```

Esse arquivo de README contém todos os detalhes sobre o projeto, as instruções para execução e informações sobre a organização das pastas de resultados.
