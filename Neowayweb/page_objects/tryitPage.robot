*** Variables ***

#botões
${botãoSubmit}                          //input[@type='submit']

#campos
${campoNome}                            //input[@id='fname']
${campoSobrenome}                       //input[@id='lname']

#labels


*** Keywords ***  

Acessar botão submit
    Wait Until Element Is Visible       ${botãoSubmit}                              20       
    Click Element                       ${botãoSubmit}

preencher nome:"${nome}"
    Wait Until Element Is Visible       ${campoNome}                                20
    Input Text                          ${campoNome}                                ${nome}

preencher sobrenome:"${sobrenome}"
    Wait Until Element Is Visible       ${campoSobrenome}                           20
    Input Text                          ${campoSobrenome}                           ${sobrenome}