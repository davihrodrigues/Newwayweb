*** Settings ***
Resource           ../page_objects/homePage.robot
Resource           ../page_objects/howtoPage.robot
Resource           ../page_objects/colorsPage.robot

*** Keywords ***
And acessa learn colors em HTML e CSS
    Acessar botão em tutorials "Learn Colors"

And acessa html color groups
    Acessar botão "Color Groups"

When deslizar ate as cores
    Descer e verificar elemento "BlueViolet"
    Num Hexagonal deve ser "#8A2BE2"
    Descer e verificar elemento "Gold"
    Num Hexagonal deve ser "#FFD700"
    Descer e verificar elemento "Cyan"
    Num Hexagonal deve ser "#00FFFF"
    Descer e verificar elemento "Blue"
    Num Hexagonal deve ser "#0000FF"
    Descer e verificar elemento "Maroon"
    Num Hexagonal deve ser "#800000"
    Descer e verificar elemento "Silver"
    Num Hexagonal deve ser "#C0C0C0"
    
Then as cores devem correponder ao num hexagonal
    Descer e verificar elemento "Black"
    Num Hexagonal deve ser "#000000"
