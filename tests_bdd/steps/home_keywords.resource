*** Settings ***
Library         AppiumLibrary
Resource        ../../resources/base.robot

*** Variables ***
${Await_Increment}        xpath=//android.widget.Button[@content-desc="Increment"]
${Increment}              xpath=//android.widget.Button[@content-desc="Increment"]


*** Keywords ***
I access the app
    Log     Open the App
    Open Session

Finished loading
    Log     Loading the app
    Wait Until Page Contains    	    Flutter Demo Home Page
    
I see the home   
    Log    Close the App
    Capture Page Screenshot
    Close Session

I click on button increment
    Log     Loading the app
    Wait Until Element Is Visible           ${Await_Increment}
    Click Element                           ${Increment}
        
the counter should have the value "1"
    Log    Close the App
    Close Session