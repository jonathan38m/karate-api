Feature: Admin Pet Store
  for help, see: https://petstore.swagger.io/v2

  Background:
    * url 'https://petstore.swagger.io/v2'
    * def bodyPet = read("bodyPet.json")
    * def bodyPet = read("bodyPet.json")

  Scenario: Add new Pet Successfully
    Given path 'pet'
    And request bodyPet
    When method POST
    Then status 200

  Scenario: Find pet by ID
    Given path 'pet'
    And request bodyPet
    When method POST
    Then status 200
    * def idPet = response.id

    Given path 'pet',idPet
    When method GET
    Then status 200

  Scenario: Update name and status of a pet
    Given path 'pet'
    And request bodyPet
    When method POST
    Then status 200
    * copy newPet = response
    * set newPet.name = "new Name"
    * set newPet.status = "sold"
    Given path 'pet'
    And request newPet
    When method PUT
    Then status 200

  Scenario: Find pet by status
    Given path 'pet'
    And request bodyPet
    When method POST
    Then status 200
    * copy newPet = response
    * set newPet.status = "sold"
    Given path 'pet'
    And request newPet
    When method PUT
    Then status 200

    Given path 'pet','findByStatus'
    And param status = "sold"
    When method GET
    Then status 200