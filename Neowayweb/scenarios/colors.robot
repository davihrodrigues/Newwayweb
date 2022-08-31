*** Settings ***
Resource            ../resources/base.robot
Test Setup       Abrir Browser
Test Teardown    Fechar Browser

*** Test Cases ***   
Acesso à página: HTML Color Groups
    Given que um estudante acessa o menu tutorials                               
    And acessa learn colors em HTML e CSS
    And acessa html color groups
    When deslizar ate as cores
    Then as cores devem correponder ao num hexagonal