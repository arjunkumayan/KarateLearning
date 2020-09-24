@ignore
Feature: post call test

  Background: 
  * def jsonPayload = read('../data/CreateUser.json')
  * url 'https://reqres.in/api/users'
  
   Scenario: Create user details
 
  And request jsonPayload
   And headers {Content-Type : 'application/json', Accept: 'application/json'}
   When method POST
  Then status 201  
  Then print 'Response--', response
  
