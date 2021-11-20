Feature: Task 1-2-3

    Background:
      Given url baseUrl

    Scenario Outline: Verify Status and ID in all Pets
      And path "pet", "findByStatus"
      And param status = '<status>'
      When method GET
      Then status 200
      And match responseHeaders['Content-Type'][0] == 'application/json'
      And match each response[*].status == '<status>'
      And match each response[*].id == '#notnull'

      Examples:
        |status  |
        |available |
        |pending |



  Scenario: Verify created User
    And path "user"
    And header Content-Type = 'application/json'
    And def getUserInformations = call read('classpath:helpers/helper.feature@name=createEmail')
    * def requestBody =
      """ {
          "id": #(getUserInformations.userId),
          "username": "#(getUserInformations.userName)",
          "firstName": "#(getUserInformations.firstName)",
          "lastName": "#(getUserInformations.lastName)",
          "email": "#(getUserInformations.userMail)",
          "password": "#(getUserInformations.password)",
          "phone": "#(getUserInformations.phoneNumber)",
          "userStatus": 0
        }
    """
    And request requestBody
    When method POST
    Then status 200
    And match response.message == getUserInformations.userId

  @name=createANewUser
    @ignore
  Scenario: Verify Created User and Call Parameters from Another Feature
    And path "user"
    And header Content-Type = 'application/json'
    And def getUserInformations = call read('classpath:helpers/helper.feature@name=createEmail')
    * def requestBody =
      """ {
          "id": #(getUserInformations.userId),
          "username": "#(getUserInformations.userName)",
          "email": "#(getUserInformations.userMail)",
          "password": "#(getUserInformations.password)",
          "phone": "#(getUserInformations.phoneNumber)",
          "userStatus": 0
        }
    """
    And set requestBody.firstName = firstName
    And set requestBody.lastName = lastName
    And request requestBody
    When method POST
    Then status 200
    And match response.message == getUserInformations.userId