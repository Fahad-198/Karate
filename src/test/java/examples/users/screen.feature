Feature: user generated token by login

  Background:
    * url 'http://65.1.234.203'
    * header Content-Type = 'application/json'
    * header Accept = 'application/json'
    * header Authorization = 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMWViNTU5NTJkMGQyOWQ0ZWJmNjEzYTljZmEwY2FmZmM3OTVlZTFmZjRiMWM0NGE5NzI5NWQxNDQ3NTNhZWFhNzY1YzI2ZjlkY2Q1YzEzYzUiLCJpYXQiOiIxNjE3Mjc2NTc4LjM2MjA0MiIsIm5iZiI6IjE2MTcyNzY1NzguMzYyMDQ5IiwiZXhwIjoiMTY0ODgxMjU3OC4zNTM3NDQiLCJzdWIiOiIxNSIsInNjb3BlcyI6W119.dDvDpV35Pg9Jjw-OwIyM-Pe0XptoegYoYiIAk95Z5phEGRAmsS5ZH2Aw9W94tT33jDR2pz7YDsLzs9VjmPVZldrlOzRUZ_TPXUb7UFbgaR0SQV3GvUtFdw-5cY9hOwNVGeOd04N4vCDLhJHcWvCXvgfv_et4KoUaZc8mfLzMvzmLt3j5EDh4rxnvqva_52AYiHbWKK2IdJrrdOuNCRA_ZWkwEleL10f6hdIlfgNFDolXBitb54InzfYNUpprFPqk9dSnma3HhZJYvNQGQrr2oUxT9Et9m03fir05I0SQK9pUOubjhKqcz4x_0TnUEA3jqDBg6OleiKRV-yvnqwC9FAfXXbz7Qw447REvpmtxX_qcPVjdj6FDdcntbwq-JCsJubCSe2x4QNWKqidu1whX1UnP8ZP-s6ZY7TXtYF6YxPThQOsDK5LYTyeyjrQtl0uWq2DwwsMuVLTWw4UtSz9ktkh63_AlTd-hJzfOUhUs3kKezAvgwiyMK8aLeLFkYHWootoQIpsz8koBx0bX_XN1D44u9FUTyOm951Qrhxr0fJ8ta6X8a9o3zHywWCHtOr4AkXAPvnqU-FI7SqaGgvs8SHa03r0r263svSYkMEOPWqs_FZAhg90h5gvvTHshcQLCivUT45mh59tsobers-FfkAWkJAxzc1lq9tWBBYjjWRQ'

#  Scenario: Screen making
#    Given path '/api/karate/screens'
#    And request { "screen_name": "Info Screen 3","screen_description": "Description of Info Screen made with karate","screen_type": 1}
#    When method POST
#    Then status 201

  Scenario: Notice board with screen name more than 255 characters
    Given path '/api/karate/screens'
    And request { "screen_name": "Notice Board 1 kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk","screen_description": "Description of Notice Board Screen made with karate","screen_type": 2}
    When method POST
    Then status 201

#  Scenario: Screen making
#    Given path '/api/karate/screens'
#    And request { "screen_name": "Salat Panel 2","screen_description": "Description of Salat Panel made with karate","screen_type": 3}
#    When method POST
#    Then status 201
#
#  Scenario: Screen making with empty screen_name field
#    Given path '/api/karate/screens'
#    And request { "screen_name": "","screen_description": "Description of Info Screen made with karate","screen_type": 1}
#    When method POST
#    Then status 400
#
#  Scenario: Screen making with empty screen_description field
#    Given path '/api/karate/screens'
#    And request { "screen_name": "Info Screen 3","screen_description": "","screen_type": 1}
#    When method POST
#    Then status 400
#
#  Scenario: Screen making with empty screen_type field
#    Given path '/api/karate/screens'
#    And request { "screen_name": "Info Screen 3","screen_description": "Description of Info Screen made with karate","screen_type":""}
#    When method POST
#    Then status 400
#
#  Scenario: Screen making with empty screen_type field without quotations
#    Given path '/api/karate/screens'
#    And request { "screen_name": "Info Screen 3","screen_description": "Description of Info Screen made with karate","screen_type":}
#    When method POST
#    Then status 400
##    The above scenario is treated as a syntax error
#
#  Scenario: Screen making with all fields empty
#    Given path '/api/karate/screens'
#    And request { "screen_name": "","screen_description": "","screen_type":""}
#    When method POST
#    Then status 400
#
#  Scenario: Screen making with long title
#    Given path '/api/karate/screens'
#    And request { "screen_name": "Info Screennnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn ddddddddddddddddddddddddddddddddddddddd","screen_description": "Description of Info Screen made with karate","screen_type": 1}
#    When method POST
#    Then status 201
#
#  Scenario: Screen making with long description
#    Given path '/api/karate/screens'
#    And request { "screen_name": "Info Screen 3","screen_description": "Description of Info Screen made with karate ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd","screen_type": 1}
#    When method POST
#    Then status 201
#
#  Scenario: Screen making with screen type greater then 4
#    Given path '/api/karate/screens'
#    And request { "screen_name": "Info Screen 3","screen_description": "Description of Info Screen made with karate","screen_type": 7}
#    When method POST
#    Then status 201