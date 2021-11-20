Feature: Task4

  Background:
    * url baseUrl

  Scenario: create user
    And def firstName = 'Acelya'
    And def lastName = 'Gul'
    Given call read('classpath:casestudy/Task_1_2_3.feature@name=createANewUser') {'firstName' : #(firstName), 'lastName' : #(lastName)}