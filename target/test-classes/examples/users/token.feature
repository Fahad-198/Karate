Feature: check generated token by API

  Background: 
    * url 'http://65.1.234.203'
    * header Content-Type = 'application/json'
    * header Accept = 'application/json'

  Scenario: Login with correct email
    Given path '/api/login'
    And request { "email": "abc@xyz.com","google_id": 12345678 }
    When method POST
    Then status 201

  Scenario: Login without @
    Given path '/api/login'
    And request { "email": "abcxyz.com","google_id": 12345678 }
    When method POST
    Then status 400

  Scenario: Login without '.com'
    Given path '/api/login'
    And request { "email": "abcxyz@","google_id": 12345678 }
    When method POST
    Then status 400

  Scenario: Login with '.com' and numbers  after it
    Given path '/api/login'
    And request { "email": "abcxyz@.com123","google_id": 12345678 }
    When method POST
    Then status 400

  Scenario: Login with space in email
    Given path '/api/login'
    And request { "email": "abc @xyz.com","google_id": 12345672 }
    When method POST
    Then status 400

  Scenario: Login with 'org' instead of '.com'
    Given path '/api/login'
    And request { "email": "abc@xyz.org","google_id": 12345671 }
    When method POST
    Then status 201

  Scenario: Login with long email
    Given path '/api/login'
    And request { "email": "abcsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss@xyz.com","google_id": 12345609 }
    When method POST
    Then status 201

  Scenario: Login with numbers before '.com'
    Given path '/api/login'
    And request { "email": "abc@xyz123.com","google_id": 12345670 }
    When method POST
    Then status 400

  Scenario: Login with special characters
    Given path '/api/login'
    And request { "email": "abc$@xyz.com","google_id": 12345325 }
    When method POST
    Then status 201

