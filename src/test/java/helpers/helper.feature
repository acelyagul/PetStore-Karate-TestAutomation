Feature: my helper features

  Background:
    * url baseUrl

  @name=createEmail
  Scenario: create mail
    * def fakerObj =  new faker()
    * def userId = fakerObj.number().digit()
    * def userName = fakerObj.name().username()
    * def firstName = fakerObj.name().firstName()
    * def lastName = fakerObj.name().lastName()
    * def userMail = fakerObj.internet().emailAddress()
    * def password = fakerObj.internet().password()
    * def phoneNumber = fakerObj.phoneNumber().cellPhone()