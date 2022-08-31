*** Variables ***
#botões 

#campos

#labels

*** Keywords ***   
Descer e verificar elemento "${element}"
    Mouse Down On Link                color_tryit.asp?color=${element} 
    Element Text Should Be           //a[text()='${element}']                       ${element}

Num Hexagonal deve ser "${igual}"
    Element Text Should Be           //a[@target='_blank'][text()='${igual}']        ${igual} 
            
Acessar botão "${lateral}"
    Wait Until Element Is Visible    //a[contains(text(),'${lateral}')]               20       
    Click Element                    //a[contains(text(),'${lateral}')]
