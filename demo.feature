#This file contain the test scenario

Feature: Testing the Subscription 1
    Background: Validate if the subscription Exist
        Given I Have Required ResourceGroup in Subscription 1
        And I Have Required Resources within it
    #Resource 1 ****
 #SQL 
Scenario: Validate if required SQL server and database is present or not 
        When I will search for ResourceGroup in Subscription 1
        Then I will find that ResourceGroup has dnb-server server 
        And a Dnb-DB Database 

#Vnet
    Scenario: Validate if required vNET is present and location is westeurope
        When I will search for ResourceGroup in Subscription 1
        Then I will find that ResourceGroup has Dnb-Demo-vnet  vnet
        And vnet has location as westeurope 

    Scenario: Validate whether D-dos is enabled or not
        When i search for Vnet in Resource ResourceGroup
        Then i will find that D-dos protection is disabled and 'false' should be present

    Scenario: validate adress prefix of 'defualt' subnet
        When i search for subnet
        Then i will find that subnet name is default
        And adress prefix is '10.0.0.0/24'

        


        
