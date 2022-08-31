*** Settings ***
Resource           ../page_objects/homePage.robot
Resource           ../page_objects/howtoPage.robot
Resource           ../page_objects/colorsPage.robot
Resource           ../page_objects/tryitPage.robot

***Variables***

*** Keywords ***                       
And acessa learn how to em HTML e CSS
    Acessar botão em tutorials "Learn How To"

And desliza ate Open modal 
    Descer ate open modal

When clicar em Open modal
    Acessar botão open modal

Then o menu modal devera ficar visível 
    Verificar se modal header esta aparecendo

And ao fechar não estar mais visível
    Acessar botão fechar em open modal
    Verificar se modal header não esta aparecendo