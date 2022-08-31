*** Variables ***
#botões 
${botãoTryItYourself}                   tryit.asp?filename=tryhtml_form_submit
${botãoSubmit}                          //input[@type='submit']

#campos
${campoNome}                            //input[@id='fname']
${campoSobrenome}                       //input[@id='lname']
#labels
${labelHtmlForm}                        html_forms.asp
${labelFrame}                          //iframe[@id='iframeResult']
*** Keywords ***    
Descer ate elemento
    Mouse Down On Link                  ${labelHtmlForm}
    
Acessar try it yourself    
    Click Link                          ${botãoTryItYourself}

mudar para a nova aba
    ${handles}=                         Get Window Handles
    Switch Window                       ${handles}[1]
    Select Frame                        ${labelFrame}

Verificar se o "${name}" e "${sobrenome}" aparecem
    Wait Until Page Contains            Your input was received as:
    Wait Until Element Is Visible       //div[contains(text(),'${name}')]           30
    Wait Until Element Is Visible       //div[contains(text(),'${sobrenome}')]      30

    