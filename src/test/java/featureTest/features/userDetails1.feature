@ignore
Feature: to get the req res check

Background:

 * def expectedOutput1 = read('../../feature/test-data.json')
 
Scenario: user details 2

Given url 'https://reqres.in/api/users/2'
And method GET
Then status 200
Then print response
And match response == expectedOutput1[1]


@parallel=false
Scenario: user details 6

Given url 'https://reqres.in/api/users/6'
And method GET
Then status 200
Then print response