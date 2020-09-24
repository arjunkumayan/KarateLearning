@ignore
Feature: to get the req res check

Background:
 * def expectedOutput = read('../data/result3.json')
 * def feature = read('userDetails1.feature')
 * def result = call feature


Scenario: user details 3

Given url 'https://reqres.in/api/users/3'
And method GET
Then status 200
Then print response
And match response == expectedOutput[0]
Then print 'result....',result
* def first_name = result.response.data.first_name
Then print 'first_name_value---',first_name

Scenario: user details 4

Given url 'https://reqres.in/api/users/4'
And method GET
Then status 200
Then print response


@parallel=false
Scenario: user details 5

Given url 'https://reqres.in/api/users/5'
And method GET
Then status 200
Then print response