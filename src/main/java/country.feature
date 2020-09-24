Feature: Check Returned countries by API

  Background:
   * url 'https://restcountries.eu/'
   * heaader Accept = 'Application/json'
      
   Scenario: get list of all countries
   Given path '/rest/v2/all'
   When method GET
   Then status 200
