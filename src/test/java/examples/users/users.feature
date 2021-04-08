Feature: Check returned users from API
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url 'http://65.1.234.203'

  Scenario: setup
    Given path '/setup'
#    And param name = 'Ivan'
#    And param status = 'active'
    When method get
    Then status 200

#    And def userResponse = response
#    Then match userResponse.data[*].name contains ["stivan"]

#    * def first = response[0]
#
#    Given path 'users', first.id
#    When method get
#    Then status 200
#
#  Scenario: create a user and then get it by id
#    * def user =
#      """
#      {
#        "name": "Test User",
#        "username": "testuser",
#        "email": "test@user.com",
#        "address": {
#          "street": "Has No Name",
#          "suite": "Apt. 123",
#          "city": "Electri",
#          "zipcode": "54321-6789"
#        }
#      }
#      """
#
#    Given url 'https://jsonplaceholder.typicode.com/users'
#    And request user
#    When method post
#    Then status 201
#
#    * def id = response.id
#    * print 'created id is: ', id
#
#    Given path id
    # When method get
    # Then status 200
    # And match response contains user
  