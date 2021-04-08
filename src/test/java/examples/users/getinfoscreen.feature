Feature: check all screens

  Background:
    * url 'http://65.1.234.203'
    * header Content-Type = 'application/json'
    * header Accept = 'application/json'
    * header Authorization = 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMWViNTU5NTJkMGQyOWQ0ZWJmNjEzYTljZmEwY2FmZmM3OTVlZTFmZjRiMWM0NGE5NzI5NWQxNDQ3NTNhZWFhNzY1YzI2ZjlkY2Q1YzEzYzUiLCJpYXQiOiIxNjE3Mjc2NTc4LjM2MjA0MiIsIm5iZiI6IjE2MTcyNzY1NzguMzYyMDQ5IiwiZXhwIjoiMTY0ODgxMjU3OC4zNTM3NDQiLCJzdWIiOiIxNSIsInNjb3BlcyI6W119.dDvDpV35Pg9Jjw-OwIyM-Pe0XptoegYoYiIAk95Z5phEGRAmsS5ZH2Aw9W94tT33jDR2pz7YDsLzs9VjmPVZldrlOzRUZ_TPXUb7UFbgaR0SQV3GvUtFdw-5cY9hOwNVGeOd04N4vCDLhJHcWvCXvgfv_et4KoUaZc8mfLzMvzmLt3j5EDh4rxnvqva_52AYiHbWKK2IdJrrdOuNCRA_ZWkwEleL10f6hdIlfgNFDolXBitb54InzfYNUpprFPqk9dSnma3HhZJYvNQGQrr2oUxT9Et9m03fir05I0SQK9pUOubjhKqcz4x_0TnUEA3jqDBg6OleiKRV-yvnqwC9FAfXXbz7Qw447REvpmtxX_qcPVjdj6FDdcntbwq-JCsJubCSe2x4QNWKqidu1whX1UnP8ZP-s6ZY7TXtYF6YxPThQOsDK5LYTyeyjrQtl0uWq2DwwsMuVLTWw4UtSz9ktkh63_AlTd-hJzfOUhUs3kKezAvgwiyMK8aLeLFkYHWootoQIpsz8koBx0bX_XN1D44u9FUTyOm951Qrhxr0fJ8ta6X8a9o3zHywWCHtOr4AkXAPvnqU-FI7SqaGgvs8SHa03r0r263svSYkMEOPWqs_FZAhg90h5gvvTHshcQLCivUT45mh59tsobers-FfkAWkJAxzc1lq9tWBBYjjWRQ'


  Scenario: Get info screen
    Given path '/api/karate/info-screens/17'
#    And param id = 18
    When method GET
    Then status 200

    And def id = response.id
    And print 'created id is: ', id


#    And def userResponse = response
#    Then match userResponse.data[*].heading contains ["a"]