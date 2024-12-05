*** Settings ***
Library     SeleniumLibrary
Documentation        Nessa tela são adicionadas todas as comunicações do projeto, ela possui acesso a todas as camadas.
# Ela é importante para não precisar das suites ficar importando as pages e resources

### Pages ###
Resource    03-steps/test_cep_step.robot
Resource    02-pages/test_cep_page.robot