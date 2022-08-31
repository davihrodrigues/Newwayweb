*** Variables ***
#botões 
${botãoModalBoxes}                              css=.w3-collapse:nth-child(10)
${botãoOpenModal}                               css=:nth-child(17) > :nth-child(2) > .w3-button
${botãoFecharModal}                             css=.w3-modal-content > .w3-display-container > .w3-button
#campos

#labels
${labelModalHeader}                             css=div.w3-modal-content.w3-animate-top.w3-card-4
${labelModal}                                   howto_css_modals.asp

*** Keywords ***
Descer ate open modal
    Mouse Down On Link                          ${labelModal}

Acessar resultado da busca
    Wait Until Element Is Visible               ${botãoModalBoxes}                      20       
    Click Element                               ${botãoModalBoxes}

Acessar botão open modal
    Wait Until Element Is Visible               ${botãoOpenModal}                20       
    Click Element                               ${botãoOpenModal}

Acessar botão fechar em open modal
    Wait Until Element Is Visible               ${botãoFecharModal}              20       
    Click Element                               ${botãoFecharModal}
  
Verificar se modal header esta aparecendo
    Wait Until Element Is Visible               ${labelModalHeader}              20    

Verificar se modal header não esta aparecendo   
    Wait Until Element Is Not Visible           ${labelModalHeader}              20  