*** Settings ***
Resource        ../resources/base.robot
Library         AppiumLibrary

Test Setup      Open Session
Test Teardown   Close Session

*** Test Cases ***
Acessar a home com sucesso
    Wait Until Page Contains    	    Flutter Demo Home Page
    
Clicar em + para incrementar números
    Wait Until Element Is Visible       xpath=//android.widget.Button[@content-desc="Increment"]       
    Click Element                       xpath=//android.widget.Button[@content-desc="Increment"]   

Clicar 10 vezes para incrementar
    Wait Until Element Is Visible       xpath=//android.widget.Button[@content-desc="Increment"]

    FOR     ${index}    IN RANGE    1       11
        Click Element                       xpath=//android.widget.Button[@content-desc="Increment"] 
        Log     ${index}
    END
