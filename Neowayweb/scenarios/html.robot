*** Settings ***
Resource            ../resources/base.robot
Test Setup       Abrir Browser
Test Teardown    Fechar Browser

***Variables**
${nome}         Davi
${sobrenome}    Haubricht

*** Test Cases ***   
Acesso à página: HTML Html
    Given que um estudante acessa o menu tutorials                               
    And acessa learn html em HTML e CSS
    And acessa html forms em html forms
    And acessar try it yourself
    And preencher o nome e sobrenome
    When clicar em submit
    Then validar se o nome e sobrenome foi enviado corretamente