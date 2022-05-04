# Automação de Testes Mobile
Robot framework e Appium

## Descrição
PoC com o objetivo de encontrarmos uma ferramenta para testes de aplicativos desenvolvidos em flutter.

## Instalações:

#### Pré-requisitos

Windows

- Appium desktop: https://appium.io/
- Appium inspector: https://github.com/appium/appium-inspector

- Android Studio
- Robot Framework
- Node

## Capabilities
https://appium.io/docs/en/writing-running-appium/caps/

    {
        "automationName": "UiAutomator2",
        "platformName": "Android",
        "deviceName": "Emulator",
        "app": "C:\\Repositorio\\mobile-robot-appium\\app\\twp.apk",
        "udid": "emulator-5554"
    }


## Execução de Testes

#### BDD / Gherkin
    robot -d ./logs tests_bdd\steps\*.robot

###### Exemplo de execução de um cenário específico:
    robot -d ./logs tests_bdd\steps\home_bdd_suite.robot

###### Executar gerando LOG em modo debug:
    robot -d ./logs -L debug tests_bdd\steps\*.robot

###### Executar gerando LOG gerando trace:
    robot -d ./logs -L trace tests_bdd\steps\*.robot
___

#### Sem BDD / Gherkin
    robot -d ./logs tests_bdd\steps\*.robot

###### Exemplo de execução de um cenário específico:
    robot -d ./logs tests\home.robot

###### Executar gerando LOG em modo debug:
    robot -d ./logs -L debug tests\*.robot

###### Executar gerando LOG gerando trace:
    robot -d ./logs -L trace tests\*.robot

Obs: É uma boa prática a utilização de tags em cenários, para que ao executar, poder informar a tag esperada.

Obs 2: 
- **DEBUG**: Usado para fins de depuração. Útil, por exemplo, para registrar em log o que as bibliotecas estão fazendo internamente. Quando uma keyword falha, um traceback, registrado automaticamente, mostra onde no código a falha ocorreu.
 
 - **TRACE**: Nível de depuração mais detalhado. Os argumentos da keyword e os valores de retorno são registrados automaticamente.