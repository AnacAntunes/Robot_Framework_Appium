*** Settings ***
Resource        ../../resources/base.robot
Resource        home_keywords.resource
Library         AppiumLibrary

*** Test Cases ***

Test Acess the homepage
    Given I access the app
    When finished loading
    Then I see the home

Test the increment numbers in the App
    Given I access the app
    When I click on button increment
    Then the counter should have the value "1"