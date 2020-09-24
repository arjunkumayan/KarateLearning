@ignore
Feature: to get the req res check

Background:
 * def expectedOutput = read('../data/result3.json')
 * def expectedOutput1 = read('../../feature/test-data.json')
 
Scenario: user details 2

Given url 'https://reqres.in/api/users/2'
And method GET
Then status 200
Then print response
And match response == expectedOutput1[1]


Scenario: user details 3

Given url 'https://reqres.in/api/users/3'
And method GET
Then status 200
Then print response
And match response == expectedOutput1[0]