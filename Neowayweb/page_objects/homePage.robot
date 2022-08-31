*** Variables ***
#botões
${botãoTutorials}                     navbtn_tutorials

#campos

#labels

*** Keywords ***
  
Acessar menu tutorials
    Wait Until Element Is Visible       ${botãoTutorials}              20       
    Click Element                       ${botãoTutorials}

Acessar botão em tutorials "${tutorial}"
    Wait Until Element Is Visible       //a[@class='w3-bar-item w3-button'][text()='${tutorial}']           20       
    Click Element                       //a[@class='w3-bar-item w3-button'][text()='${tutorial}']
