Feature: Oauth2 authentication

 Background: 
   * url 'https://reqres.in/api/register'
   
   Scenario: Authentication test
   
   Given path 'token'
   And form field grant_type = 'client_credentials'
   And form field client_id = ' '
   And for field client_secret_id = ' '
   When method POST
   Then status 200
   
   
   * def access_token = 'response.access_token'
   
   
   Given path ' '
   And header Authorization = "Bearer"+ access_token
   When method GET
   Then status 200
    