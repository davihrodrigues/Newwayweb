### Recomendações ###
Ler a documentação: https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html


### Instalação

1. Instalar o chrome driver ou outro driver da sua preferencia no path do seu sistema operacional
1.1 tutorial onde encontrar o path no windows = (https://www.java.com/pt-BR/download/help/path_pt-br.html)
2. Instalar o Python 3
3. Instalar dependencias do robot:
$ pip install robotframework
$ pip install robotframework-seleniumlibrary

### Executar a automação

1. Executar o regressivo: 
$ robot -d ../logs/ scenarios

- Com esse comando, após a automação é gerado um log na pasta logs com informações mais detalhadas.

2. Executar um dos cenarios: 
$ cd scenarios
$ robot -d ../logs/ nomedocenario.robot
