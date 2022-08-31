*** Settings ***
Resource            ../resources/base.robot
Test Setup       Abrir Browser
Test Teardown    Fechar Browser

*** Test Cases ***   
Acesso à página: How To Make a Modal Box With CSS and JavaScript
    Given que um estudante acessa o menu tutorials                               
    And acessa learn how to em HTML e CSS
    And desliza ate Open modal
    When clicar em Open modal
    Then o menu modal devera ficar visível 
    And ao fechar não estar mais visível
