***Settings**
Library     SeleniumLibrary
Library     Collections

Resource        ../test_steps/howtoStep.robot
Resource        ../test_steps/colorsStep.robot
Resource        ../test_steps/htmlStep.robot

***Variables***

${URL}                                https://www.w3schools.com/


***Keywords***
Abrir Browser
  Open Browser               ${URL}    gc
  maximize browser window

Fechar Browser
    Capture Page Screenshot
    
    Close Browser
