*** Settings ***
Resource           ../page_objects/homePage.robot
Resource           ../page_objects/howtoPage.robot
Resource           ../page_objects/colorsPage.robot
Resource           ../page_objects/htmlPage.robot
Resource           ../page_objects/tryitPage.robot

*** Keywords ***
Given que um estudante acessa o menu tutorials 
    Acessar menu tutorials                           

And acessa learn html em HTML e CSS
    Acessar botão em tutorials "Learn HTML"
    
And acessa html forms em html forms
    Descer ate elemento
    Acessar botão "HTML Forms"
    
And acessar try it yourself
    Acessar try it yourself
    mudar para a nova aba
And preencher o nome e sobrenome
    preencher nome:"${nome}"
    preencher sobrenome:"${sobrenome}"
    
When clicar em submit
    Acessar botão submit

Then validar se o nome e sobrenome foi enviado corretamente
    Verificar se o "${nome}" e "${sobrenome}" aparecem